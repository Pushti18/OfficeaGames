-- ============================================================
-- Run this in Supabase SQL Editor
-- This fixes admin login and adds password update functions
-- ============================================================

-- 1. Update bootstrap_admin to also create a player account
CREATE OR REPLACE FUNCTION public.bootstrap_admin(_username TEXT, _password TEXT)
RETURNS TEXT
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_username TEXT := LOWER(NULLIF(TRIM(_username), ''));
  v_player public.players%ROWTYPE;
  v_pw_hash TEXT;
BEGIN
  IF v_username IS NULL THEN
    RAISE EXCEPTION 'invalid_username';
  END IF;

  IF v_username !~ '^[a-zA-Z0-9._-]{3,30}$' THEN
    RAISE EXCEPTION 'invalid_username';
  END IF;

  IF COALESCE(LENGTH(_password), 0) < 6 THEN
    RAISE EXCEPTION 'invalid_password';
  END IF;

  IF EXISTS (SELECT 1 FROM public.admin_accounts) THEN
    RAISE EXCEPTION 'admin_already_initialized';
  END IF;

  v_pw_hash := extensions.crypt(_password, extensions.gen_salt('bf', 10));

  INSERT INTO public.admin_accounts (username, password_hash, updated_at)
  VALUES (v_username, v_pw_hash, NOW());

  INSERT INTO public.players (name, updated_at)
  VALUES (v_username, NOW())
  RETURNING * INTO v_player;

  INSERT INTO public.player_accounts (player_id, username, password_hash, must_reset_password, updated_at)
  VALUES (v_player.id, v_username, v_pw_hash, FALSE, NOW());

  RETURN v_username;
END;
$$;

-- 2. Function: Admin update any player's password
CREATE OR REPLACE FUNCTION public.admin_update_player_password(
  _admin_username TEXT,
  _admin_password TEXT,
  _player_username TEXT,
  _new_password TEXT
)
RETURNS TEXT
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_admin TEXT := LOWER(NULLIF(TRIM(_admin_username), ''));
  v_player_username TEXT := LOWER(NULLIF(TRIM(_player_username), ''));
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM public.admin_accounts a
    WHERE LOWER(a.username) = v_admin
      AND a.password_hash = extensions.crypt(_admin_password, a.password_hash)
  ) THEN
    RAISE EXCEPTION 'invalid_admin_credentials';
  END IF;

  IF COALESCE(LENGTH(_new_password), 0) < 6 THEN
    RAISE EXCEPTION 'invalid_password';
  END IF;

  UPDATE public.player_accounts
  SET password_hash = extensions.crypt(_new_password, extensions.gen_salt('bf', 10)),
      must_reset_password = TRUE,
      updated_at = NOW()
  WHERE LOWER(username) = v_player_username;

  IF NOT FOUND THEN
    RAISE EXCEPTION 'Player not found';
  END IF;

  RETURN v_player_username;
END;
$$;

-- 3. Function: Admin update their own password
CREATE OR REPLACE FUNCTION public.admin_update_admin_password(
  _admin_username TEXT,
  _current_password TEXT,
  _new_password TEXT
)
RETURNS TEXT
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_admin TEXT := LOWER(NULLIF(TRIM(_admin_username), ''));
  v_new_hash TEXT;
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM public.admin_accounts a
    WHERE LOWER(a.username) = v_admin
      AND a.password_hash = extensions.crypt(_current_password, a.password_hash)
  ) THEN
    RAISE EXCEPTION 'invalid_admin_credentials';
  END IF;

  IF COALESCE(LENGTH(_new_password), 0) < 6 THEN
    RAISE EXCEPTION 'invalid_password';
  END IF;

  v_new_hash := extensions.crypt(_new_password, extensions.gen_salt('bf', 10));

  UPDATE public.admin_accounts
  SET password_hash = v_new_hash, updated_at = NOW()
  WHERE LOWER(username) = v_admin;

  -- Also update matching player_accounts password
  UPDATE public.player_accounts
  SET password_hash = v_new_hash, must_reset_password = FALSE, updated_at = NOW()
  WHERE LOWER(username) = v_admin;

  RETURN v_admin;
END;
$$;

-- 4. Grant permissions
GRANT EXECUTE ON FUNCTION public.admin_update_player_password(TEXT, TEXT, TEXT, TEXT) TO anon, authenticated;
GRANT EXECUTE ON FUNCTION public.admin_update_admin_password(TEXT, TEXT, TEXT) TO anon, authenticated;

-- ============================================================
-- 5. FIX EXISTING ADMIN: Delete old admin and re-bootstrap
--    Change 'myadmin' and 'mypassword123' to what you want
-- ============================================================
DELETE FROM public.player_accounts WHERE LOWER(username) IN (SELECT LOWER(username) FROM public.admin_accounts);
DELETE FROM public.players WHERE LOWER(name) IN (SELECT LOWER(username) FROM public.admin_accounts);
DELETE FROM public.admin_accounts;

-- Now create fresh admin + player account in one go
-- >>> CHANGE THESE VALUES TO YOUR DESIRED ADMIN USERNAME AND PASSWORD <<<
DO $$
DECLARE
  v_username TEXT := 'officeadmin';
  v_password TEXT := 'Admin@123';
  v_pw_hash TEXT;
  v_player public.players%ROWTYPE;
BEGIN
  v_pw_hash := extensions.crypt(v_password, extensions.gen_salt('bf', 10));

  INSERT INTO public.admin_accounts (username, password_hash, updated_at)
  VALUES (v_username, v_pw_hash, NOW());

  INSERT INTO public.players (name, updated_at)
  VALUES (v_username, NOW())
  RETURNING * INTO v_player;

  INSERT INTO public.player_accounts (player_id, username, password_hash, must_reset_password, updated_at)
  VALUES (v_player.id, v_username, v_pw_hash, FALSE, NOW());

  RAISE NOTICE 'Admin created: username=%, password=%', v_username, v_password;
END;
$$;
