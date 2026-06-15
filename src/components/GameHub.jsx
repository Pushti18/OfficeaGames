import { useState, useEffect } from 'react'
import { supabase } from '../lib/supabase.js'
import { getPlayStatus } from '../hooks/usePlayLimit.js'
import { DIFFICULTY_CONFIG, getDifficultyFromScore } from '../utils/scoring.js'
import { GAME_META } from '../utils/gameUtils.js'
import { isMuted, setMuted } from '../utils/sounds.js'
import QuestionManager from './QuestionManager.jsx'
import AdminDashboard from './AdminDashboard.jsx'
import BulkImport from './BulkImport.jsx'

function formatCountdown(target) {
  const diff = target - new Date()
  if (diff <= 0) return 'available now'
  const h = Math.floor(diff / 3600000)
  const m = Math.floor((diff % 3600000) / 60000)
  const s = Math.floor((diff % 60000) / 1000)
  if (h > 0) return `${h}h ${m}m`
  if (m > 0) return `${m}m ${s}s`
  return `${s}s`
}

function AdminPanel() {
  const [open, setOpen] = useState(false)
  const [tab, setTab] = useState('players') // 'players' | 'questions' | 'dashboard' | 'import' | 'passwords'
  const [adminUsername, setAdminUsername] = useState('')
  const [adminPassword, setAdminPassword] = useState('')
  const [authenticated, setAuthenticated] = useState(false)
  const [authError, setAuthError] = useState('')

  // Player creation state
  const [playerName, setPlayerName] = useState('')
  const [playerUsername, setPlayerUsername] = useState('')
  const [tempPassword, setTempPassword] = useState('')
  const [message, setMessage] = useState('')
  const [error, setError] = useState('')
  const [loading, setLoading] = useState(false)

  // Password management state
  const [pwTargetUsername, setPwTargetUsername] = useState('')
  const [pwNewPassword, setPwNewPassword] = useState('')
  const [adminCurrentPassword, setAdminCurrentPassword] = useState('')
  const [adminNewPassword, setAdminNewPassword] = useState('')
  const [adminConfirmPassword, setAdminConfirmPassword] = useState('')

  // Player list state
  const [playerList, setPlayerList] = useState([])
  const [playerListLoading, setPlayerListLoading] = useState(false)
  const [playerSearch, setPlayerSearch] = useState('')

  async function handleAdminAuth(e) {
    e.preventDefault()
    if (!adminUsername.trim() || !adminPassword) {
      setAuthError('Enter admin credentials.')
      return
    }
    // Verify by calling needs_admin_bootstrap (lightweight) then try a list call
    try {
      const { error: rpcError } = await supabase.rpc('admin_list_questions', {
        _admin_username: adminUsername.trim().toLowerCase(),
        _admin_password: adminPassword,
        _game_type: 'anagram',
        _difficulty: 'easy',
      })
      if (rpcError) throw rpcError
      setAuthenticated(true)
      setAuthError('')
    } catch (err) {
      setAuthError('Invalid admin credentials.')
    }
  }

  async function handleCreatePlayer(e) {
    e.preventDefault()
    if (!playerName.trim() || !playerUsername.trim() || !tempPassword) {
      setError('Fill all player fields.')
      return
    }
    if (tempPassword.length < 6) {
      setError('Temporary password must be at least 6 characters.')
      return
    }
    setLoading(true)
    setError('')
    setMessage('')
    try {
      const { error: rpcError } = await supabase.rpc('admin_create_player', {
        _admin_username: adminUsername.trim().toLowerCase(),
        _admin_password: adminPassword,
        _player_name: playerName.trim(),
        _player_username: playerUsername.trim().toLowerCase(),
        _temporary_password: tempPassword,
      })
      if (rpcError) throw rpcError
      setMessage(`Player "${playerUsername.trim().toLowerCase()}" created!`)
      setPlayerName('')
      setPlayerUsername('')
      setTempPassword('')
    } catch (err) {
      const msg = err?.message || ''
      if (msg.includes('invalid_admin_credentials')) setError('Invalid admin credentials.')
      else if (msg.includes('player_name_taken')) setError('Player name is already taken.')
      else if (msg.includes('player_username_taken')) setError('Username is already taken.')
      else setError(msg || 'Failed to create player.')
    } finally {
      setLoading(false)
    }
  }

  async function handleResetPlayerPassword(e) {
    e.preventDefault()
    if (!pwTargetUsername.trim() || !pwNewPassword) {
      setError('Enter player username and new password.')
      return
    }
    if (pwNewPassword.length < 6) {
      setError('Password must be at least 6 characters.')
      return
    }
    const targetUser = pwTargetUsername.trim().toLowerCase()
    const newPw = pwNewPassword
    setConfirmAction({
      message: `Reset password for player "${targetUser}"?`,
      onConfirm: async () => {
        setConfirmAction(null)
        setLoading(true)
        setError('')
        setMessage('')
        try {
          const { error: rpcError } = await supabase.rpc('admin_update_player_password', {
            _admin_username: adminUsername.trim().toLowerCase(),
            _admin_password: adminPassword,
            _player_username: targetUser,
            _new_password: newPw,
          })
          if (rpcError) throw rpcError
          setMessage(`Password reset for "${targetUser}".`)
          setPwTargetUsername('')
          setPwNewPassword('')
        } catch (err) {
          setError(err?.message || 'Failed to reset password.')
        } finally {
          setLoading(false)
        }
      },
    })
  }

  async function fetchPlayerList() {
    setPlayerListLoading(true)
    try {
      const { data, error: rpcError } = await supabase.rpc('admin_list_players', {
        _admin_username: adminUsername.trim().toLowerCase(),
        _admin_password: adminPassword,
      })
      if (rpcError) throw rpcError
      setPlayerList(data || [])
    } catch (err) {
      setError(err?.message || 'Failed to load players.')
    } finally {
      setPlayerListLoading(false)
    }
  }

  // Confirm dialog state
  const [confirmAction, setConfirmAction] = useState(null)

  async function handleDeletePlayer(username) {
    setConfirmAction({
      message: `Are you sure you want to delete player "${username}"? This cannot be undone.`,
      onConfirm: async () => {
        setConfirmAction(null)
        setLoading(true)
        setError('')
        setMessage('')
        try {
          const { error: rpcError } = await supabase.rpc('admin_delete_player', {
            _admin_username: adminUsername.trim().toLowerCase(),
            _admin_password: adminPassword,
            _player_username: username,
          })
          if (rpcError) throw rpcError
          setMessage(`Player "${username}" deleted.`)
          fetchPlayerList()
        } catch (err) {
          setError(err?.message || 'Failed to delete player.')
        } finally {
          setLoading(false)
        }
      },
    })
  }

  async function handleResetDevice(username) {
    setConfirmAction({
      message: `Reset device binding for "${username}"? They will need to log in again from their new device.`,
      onConfirm: async () => {
        setConfirmAction(null)
        setLoading(true)
        setError('')
        setMessage('')
        try {
          const { error: rpcError } = await supabase.rpc('admin_reset_player_device', {
            _admin_username: adminUsername.trim().toLowerCase(),
            _admin_password: adminPassword,
            _player_username: username,
          })
          if (rpcError) throw rpcError
          setMessage(`Device binding reset for "${username}".`)
        } catch (err) {
          setError(err?.message || 'Failed to reset device.')
        } finally {
          setLoading(false)
        }
      },
    })
  }

  async function handleChangeAdminPassword(e) {
    e.preventDefault()
    if (!adminCurrentPassword || !adminNewPassword) {
      setError('Enter current and new password.')
      return
    }
    if (adminNewPassword.length < 6) {
      setError('New password must be at least 6 characters.')
      return
    }
    if (adminNewPassword !== adminConfirmPassword) {
      setError('New passwords do not match.')
      return
    }
    setLoading(true)
    setError('')
    setMessage('')
    try {
      const { error: rpcError } = await supabase.rpc('admin_update_admin_password', {
        _admin_username: adminUsername.trim().toLowerCase(),
        _current_password: adminCurrentPassword,
        _new_password: adminNewPassword,
      })
      if (rpcError) throw rpcError
      setMessage('Admin password updated successfully.')
      setAdminCurrentPassword('')
      setAdminNewPassword('')
      setAdminConfirmPassword('')
    } catch (err) {
      setError(err?.message || 'Failed to update admin password.')
    } finally {
      setLoading(false)
    }
  }

  if (!open) {
    return (
      <button className="btn-admin-toggle" onClick={() => setOpen(true)}>
        👑 Admin Panel
      </button>
    )
  }

  return (
    <div className="admin-panel">
      <div className="admin-panel-header">
        <span>👑 Admin Panel</span>
        <button className="admin-close-btn" onClick={() => { setOpen(false); setError(''); setMessage(''); setAuthError('') }}>✕</button>
      </div>

      {!authenticated ? (
        <form onSubmit={handleAdminAuth} className="admin-form">
          <input
            type="text"
            placeholder="Admin username"
            value={adminUsername}
            onChange={e => { setAdminUsername(e.target.value); setAuthError('') }}
            autoComplete="username"
          />
          <input
            type="password"
            placeholder="Admin password"
            value={adminPassword}
            onChange={e => { setAdminPassword(e.target.value); setAuthError('') }}
            autoComplete="current-password"
          />
          {authError && <p className="admin-error">{authError}</p>}
          <button type="submit" className="btn-primary">Authenticate</button>
        </form>
      ) : (
        <>
          <div className="admin-tabs">
            <button className={`admin-tab ${tab === 'playerlist' ? 'active' : ''}`} onClick={() => { setTab('playerlist'); fetchPlayerList() }}>
              Players
            </button>
            <button className={`admin-tab ${tab === 'players' ? 'active' : ''}`} onClick={() => setTab('players')}>
              Add Player
            </button>
            <button className={`admin-tab ${tab === 'questions' ? 'active' : ''}`} onClick={() => setTab('questions')}>
              Questions
            </button>
            <button className={`admin-tab ${tab === 'dashboard' ? 'active' : ''}`} onClick={() => setTab('dashboard')}>
              Dashboard
            </button>
            <button className={`admin-tab ${tab === 'import' ? 'active' : ''}`} onClick={() => setTab('import')}>
              Import
            </button>
            <button className={`admin-tab ${tab === 'passwords' ? 'active' : ''}`} onClick={() => setTab('passwords')}>
              Passwords
            </button>
          </div>

          {tab === 'playerlist' ? (
            <div className="admin-player-list">
              <input
                type="text"
                className="admin-search-input"
                placeholder="Search players..."
                value={playerSearch}
                onChange={e => setPlayerSearch(e.target.value)}
              />
              {playerListLoading ? (
                <p style={{ color: 'var(--muted)', textAlign: 'center' }}>Loading players...</p>
              ) : playerList.length === 0 ? (
                <p style={{ color: 'var(--muted)', textAlign: 'center' }}>No players found.</p>
              ) : (() => {
                const filtered = playerList.filter(p =>
                  p.name?.toLowerCase().includes(playerSearch.toLowerCase()) ||
                  p.username?.toLowerCase().includes(playerSearch.toLowerCase())
                )
                return filtered.length === 0 ? (
                  <p style={{ color: 'var(--muted)', textAlign: 'center' }}>No matching players.</p>
                ) : (
                  <table className="admin-table">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Username</th>
                        <th>Created</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      {filtered.map((p, i) => (
                        <tr key={p.id || i}>
                          <td>{i + 1}</td>
                          <td>{p.name}</td>
                          <td>{p.username}</td>
                          <td>{p.created_at ? new Date(p.created_at).toLocaleDateString() : '-'}</td>
                          <td style={{ display: 'flex', gap: 4 }}>
                            <button
                              className="btn-action-sm"
                              onClick={() => handleResetDevice(p.username)}
                              disabled={loading}
                              title="Reset device binding"
                            >
                              📱
                            </button>
                            <button
                              className="btn-delete-sm"
                              onClick={() => handleDeletePlayer(p.username)}
                              disabled={loading}
                            >
                              Delete
                            </button>
                          </td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                )
              })()}
              <button className="btn-primary" onClick={fetchPlayerList} disabled={playerListLoading} style={{ marginTop: 8 }}>
                {playerListLoading ? 'Refreshing...' : 'Refresh'}
              </button>
              {message && <p className="admin-success">{message}</p>}
              {error && <p className="admin-error">{error}</p>}
            </div>
          ) : tab === 'passwords' ? (
            <div className="admin-form" style={{ display: 'flex', flexDirection: 'column', gap: 12 }}>
              <h4 style={{ color: 'var(--primary2)', margin: 0 }}>Reset Player Password</h4>
              <form onSubmit={handleResetPlayerPassword} className="admin-form">
                <input
                  type="text"
                  placeholder="Player username"
                  value={pwTargetUsername}
                  onChange={e => { setPwTargetUsername(e.target.value); setError('') }}
                  autoComplete="off"
                />
                <input
                  type="password"
                  placeholder="New password (min 6)"
                  value={pwNewPassword}
                  onChange={e => { setPwNewPassword(e.target.value); setError('') }}
                  autoComplete="new-password"
                />
                <button type="submit" className="btn-primary" disabled={loading}>
                  {loading ? 'Updating...' : 'Reset Player Password'}
                </button>
              </form>

              <hr style={{ border: 'none', borderTop: '1px solid var(--surface2)', margin: '8px 0' }} />

              <h4 style={{ color: 'var(--primary2)', margin: 0 }}>Change Admin Password</h4>
              <form onSubmit={handleChangeAdminPassword} className="admin-form">
                <input
                  type="password"
                  placeholder="Current admin password"
                  value={adminCurrentPassword}
                  onChange={e => { setAdminCurrentPassword(e.target.value); setError('') }}
                  autoComplete="current-password"
                />
                <input
                  type="password"
                  placeholder="New admin password (min 6)"
                  value={adminNewPassword}
                  onChange={e => { setAdminNewPassword(e.target.value); setError('') }}
                  autoComplete="new-password"
                />
                <input
                  type="password"
                  placeholder="Confirm new password"
                  value={adminConfirmPassword}
                  onChange={e => { setAdminConfirmPassword(e.target.value); setError('') }}
                  autoComplete="new-password"
                />
                <button type="submit" className="btn-primary" disabled={loading}>
                  {loading ? 'Updating...' : 'Change Admin Password'}
                </button>
              </form>

              {message && <p className="admin-success">{message}</p>}
              {error && <p className="admin-error">{error}</p>}
            </div>
          ) : tab === 'dashboard' ? (
            <AdminDashboard adminUsername={adminUsername.trim().toLowerCase()} adminPassword={adminPassword} />
          ) : tab === 'import' ? (
            <BulkImport adminUsername={adminUsername.trim().toLowerCase()} adminPassword={adminPassword} />
          ) : tab === 'players' ? (
            <form onSubmit={handleCreatePlayer} className="admin-form">
              <input
                type="text"
                placeholder="Player display name"
                value={playerName}
                onChange={e => { setPlayerName(e.target.value); setError('') }}
                maxLength={20}
                autoComplete="off"
              />
              <input
                type="text"
                placeholder="Player username (login)"
                value={playerUsername}
                onChange={e => { setPlayerUsername(e.target.value); setError('') }}
                autoComplete="off"
              />
              <input
                type="password"
                placeholder="Temporary password (min 6)"
                value={tempPassword}
                onChange={e => { setTempPassword(e.target.value); setError('') }}
                autoComplete="new-password"
              />
              {message && <p className="admin-success">{message}</p>}
              {error && <p className="admin-error">{error}</p>}
              <button type="submit" className="btn-primary" disabled={loading}>
                {loading ? 'Creating...' : '+ Create Player'}
              </button>
            </form>
          ) : (
            <QuestionManager adminUsername={adminUsername.trim().toLowerCase()} adminPassword={adminPassword} />
          )}

          {confirmAction && (
            <div className="confirm-overlay">
              <div className="confirm-dialog">
                <p>{confirmAction.message}</p>
                <div className="confirm-actions">
                  <button className="btn-confirm-yes" onClick={confirmAction.onConfirm}>Yes, Delete</button>
                  <button className="btn-confirm-no" onClick={() => setConfirmAction(null)}>Cancel</button>
                </div>
              </div>
            </div>
          )}
        </>
      )}
    </div>
  )
}

export default function GameHub({ player, weeklyScore, isAdmin, onPlay, onLeaderboard, onStats, onDaily, onLogout }) {
  const [playStatus, setPlayStatus] = useState(getPlayStatus(player?.id))
  const [countdown, setCountdown] = useState('')
  const [muted, setMutedState] = useState(isMuted())

  function toggleMute() {
    const next = !muted
    setMutedState(next)
    setMuted(next)
  }

  const difficulty = getDifficultyFromScore(weeklyScore)
  const diffCfg = DIFFICULTY_CONFIG[difficulty]

  useEffect(() => {
    const interval = setInterval(() => {
      const status = getPlayStatus(player?.id)
      setPlayStatus(status)
      if (status.nextPlayTime) {
        setCountdown(formatCountdown(status.nextPlayTime))
      }
    }, 1000)
    return () => clearInterval(interval)
  }, [])

  const nextPoints = difficulty === 'easy' ? 51 : difficulty === 'medium' ? 151 : null
  const playsLabel = Number.isFinite(playStatus.playsRemaining) ? `${playStatus.playsRemaining}/2` : '∞'

  return (
    <div className="screen-center">
      <div className="hub-container">
        <header className="hub-header">
          <div className="hub-title">🎮 Office<span className="accent">Games</span></div>
          <div className="hub-header-right">
            <button className="btn-mute" onClick={toggleMute} title={muted ? 'Unmute' : 'Mute'}>
              {muted ? '🔇' : '🔊'}
            </button>
            <span className="hub-player">👤 {player.name}</span>
            <button className="btn-logout-top" onClick={onLogout}>🚪 Logout</button>
          </div>
        </header>

        <div className="stats-row">
          <div className="stat-card">
            <span className="stat-icon">🏅</span>
            <span className="stat-value">{weeklyScore}</span>
            <span className="stat-label">Weekly Score</span>
          </div>
          <div className="stat-card">
            <span className="stat-icon">{diffCfg.emoji}</span>
            <span className="stat-value">{diffCfg.label}</span>
            <span className="stat-label">Difficulty</span>
          </div>
          <div className="stat-card">
            <span className="stat-icon">🎯</span>
            <span className="stat-value">{playsLabel}</span>
            <span className="stat-label">Plays Left</span>
          </div>
        </div>

        {nextPoints && (
          <div className="progress-hint">
            🔼 Reach <strong>{nextPoints} pts</strong> to unlock{' '}
            {difficulty === 'easy' ? 'Medium' : 'Hard'} difficulty
          </div>
        )}

        <div className="games-preview">
          {Object.entries(GAME_META).map(([key, meta]) => (
            <div key={key} className="game-chip" style={{ borderColor: meta.color }}>
              <span>{meta.emoji}</span>
              <span>{meta.name}</span>
            </div>
          ))}
        </div>

        {playStatus.playsRemaining > 0 ? (
          <button className="btn-play" onClick={onPlay}>
            🎲 Play Random Game
          </button>
        ) : (
          <div className="blocked-play">
            <p>🔒 Next play in <strong>{countdown}</strong></p>
            <p className="blocked-sub">Come back after {playStatus.nextPlayTime?.toLocaleTimeString()}</p>
          </div>
        )}

        <div className="hub-actions-row">
          <button className="btn-hub-action" onClick={onStats}>
            📊 Stats
          </button>
          <button className="btn-hub-action daily" onClick={onDaily}>
            🌟 Daily
          </button>
        </div>

        <button className="btn-leaderboard" onClick={onLeaderboard}>
          🏆 Weekly Leaderboard
        </button>

        {supabase && isAdmin && <AdminPanel />}
      </div>
    </div>
  )
}
