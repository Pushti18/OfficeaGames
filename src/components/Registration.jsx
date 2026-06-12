import { useState } from 'react'

export default function Registration({
  onPlayerLogin,
  onSetFirstPassword,
  onRegisterLocal,
  notice,
  requiresAuth,
  requiresPasswordReset,
}) {
  const [error, setError] = useState('')
  const [loading, setLoading] = useState(false)

  const [localName, setLocalName] = useState('')

  const [playerUsername, setPlayerUsername] = useState('')
  const [playerPassword, setPlayerPassword] = useState('')

  const [newPassword, setNewPassword] = useState('')
  const [confirmNewPassword, setConfirmNewPassword] = useState('')

  async function handleLocalRegister(e) {
    e.preventDefault()
    const trimmedName = localName.trim()
    if (!trimmedName) {
      setError('Please enter a player name.')
      return
    }
    setLoading(true)
    setError('')
    try {
      await onRegisterLocal(trimmedName)
    } catch (err) {
      setError(err.message || 'Could not continue.')
    } finally {
      setLoading(false)
    }
  }

  async function handlePlayerLogin(e) {
    e.preventDefault()
    const username = playerUsername.trim().toLowerCase()
    if (!username) {
      setError('Please enter username.')
      return
    }
    if (!playerPassword) {
      setError('Please enter password.')
      return
    }
    setLoading(true)
    setError('')
    try {
      await onPlayerLogin({ username, password: playerPassword })
      setPlayerPassword('')
    } catch (err) {
      setError(err.message || 'Login failed.')
    } finally {
      setLoading(false)
    }
  }

  async function handleFirstPasswordSubmit(e) {
    e.preventDefault()
    if (newPassword.length < 6) {
      setError('Password must be at least 6 characters.')
      return
    }
    if (newPassword !== confirmNewPassword) {
      setError('Passwords do not match.')
      return
    }
    setLoading(true)
    setError('')
    try {
      await onSetFirstPassword({ password: newPassword })
      setNewPassword('')
      setConfirmNewPassword('')
    } catch (err) {
      setError(err.message || 'Could not set password.')
    } finally {
      setLoading(false)
    }
  }


  return (
    <div className="screen-center">
      <div className="card registration-card">
        <div className="logo">🎮</div>
        <h1>Office<span className="accent">Games</span></h1>
        <p className="subtitle">Brain games for the office 🧠</p>

        {!requiresAuth ? (
          <form onSubmit={handleLocalRegister} className="reg-form">
            <label htmlFor="local-name">Choose your player name</label>
            <input
              id="local-name"
              type="text"
              value={localName}
              onChange={e => { setLocalName(e.target.value); setError('') }}
              placeholder="e.g. CoolPlayer42"
              maxLength={20}
              autoFocus
              autoComplete="off"
            />
            {notice && <p className="info-msg">ℹ️ {notice}</p>}
            {error && <p className="error-msg">⚠️ {error}</p>}
            <button type="submit" className="btn-primary" disabled={loading}>
              {loading ? '⏳ Please wait…' : '🚀 Join & Play'}
            </button>
          </form>
        ) : requiresPasswordReset ? (
          <form onSubmit={handleFirstPasswordSubmit} className="reg-form">
            <p className="otp-meta">First login detected. Set your new password to continue.</p>
            <label htmlFor="new-password">New Password</label>
            <input
              id="new-password"
              type="password"
              value={newPassword}
              onChange={e => { setNewPassword(e.target.value); setError('') }}
              minLength={6}
              autoFocus
              autoComplete="new-password"
            />
            <label htmlFor="confirm-password">Confirm New Password</label>
            <input
              id="confirm-password"
              type="password"
              value={confirmNewPassword}
              onChange={e => { setConfirmNewPassword(e.target.value); setError('') }}
              minLength={6}
              autoComplete="new-password"
            />
            {notice && <p className="info-msg">ℹ️ {notice}</p>}
            {error && <p className="error-msg">⚠️ {error}</p>}
            <button type="submit" className="btn-primary" disabled={loading}>
              {loading ? '⏳ Updating…' : '✅ Save Password'}
            </button>
          </form>
        ) : (
          <form onSubmit={handlePlayerLogin} className="reg-form">
            <label htmlFor="player-username">Username</label>
            <input
              id="player-username"
              type="text"
              value={playerUsername}
              onChange={e => { setPlayerUsername(e.target.value); setError('') }}
              placeholder="player username"
              autoFocus
              autoComplete="username"
            />
            <label htmlFor="player-password">Password</label>
            <input
              id="player-password"
              type="password"
              value={playerPassword}
              onChange={e => { setPlayerPassword(e.target.value); setError('') }}
              placeholder="password"
              autoComplete="current-password"
            />
            {notice && <p className="info-msg">ℹ️ {notice}</p>}
            {error && <p className="error-msg">⚠️ {error}</p>}
            <button type="submit" className="btn-primary" disabled={loading}>
              {loading ? '⏳ Signing in…' : '🔐 Login'}
            </button>
          </form>
        )}

        <div className="rules-box">
          <p>📋 <strong>Rules:</strong></p>
          <ul>
            <li>🎯 2 games every 8 hours</li>
            <li>🔒 One account per computer/phone</li>
            {requiresAuth && <li>👑 Contact admin for login credentials</li>}
            <li>🏆 Weekly leaderboard (resets Mon 10AM IST)</li>
            <li>📈 Difficulty increases with your score</li>
          </ul>
        </div>
      </div>
    </div>
  )
}
