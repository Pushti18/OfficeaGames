import { supabase } from '../lib/supabase.js'

const WINDOW_MS = 8 * 60 * 60 * 1000 // 8 hours
const MAX_PLAYS = 2
const TESTING_NO_PLAY_LIMIT = false

/**
 * Query Supabase for this player's recent game sessions within the play window.
 * Returns { playsRemaining, nextPlayTime, recentCount }
 */
export async function getPlayStatus(playerId, sessionToken, fingerprint) {
  if (TESTING_NO_PLAY_LIMIT) {
    return { playsRemaining: Number.POSITIVE_INFINITY, nextPlayTime: null, recentCount: 0 }
  }

  if (!playerId || !supabase || !sessionToken || !fingerprint) {
    return { playsRemaining: MAX_PLAYS, nextPlayTime: null, recentCount: 0 }
  }

  const { data, error } = await supabase.rpc('get_play_status', {
    _session_token: sessionToken,
    _fp_hash: fingerprint,
  })

  if (error) {
    console.error('Failed to fetch play status:', error)
    return { playsRemaining: MAX_PLAYS, nextPlayTime: null, recentCount: 0 }
  }

  const recentCount = data?.recent_count ?? 0
  const playsRemaining = Math.max(0, MAX_PLAYS - recentCount)
  const nextPlayTime =
    playsRemaining === 0 && data?.oldest_played_at
      ? new Date(new Date(data.oldest_played_at).getTime() + WINDOW_MS)
      : null

  return { playsRemaining, nextPlayTime, recentCount }
}

export function getLastGameType() {
  return localStorage.getItem('og_last_game') || null
}

export function setLastGameType(gameType) {
  localStorage.setItem('og_last_game', gameType)
}
