-- Run this in Supabase SQL Editor to fix the bootstrap_admin function
-- so the admin can also log in as a player.

-- 1. Update the bootstrap_admin function to also create a player account
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

-- 2. If you already created an admin but can't log in, run this to
--    create the missing player account for your existing admin.
--    Replace 'youradminusername' and 'youradminpassword' with your actual values.
--    UNCOMMENT the lines below and run them:

-- DO $$
-- DECLARE
--   v_username TEXT := 'youradminusername';
--   v_password TEXT := 'youradminpassword';
--   v_player public.players%ROWTYPE;
--   v_pw_hash TEXT;
-- BEGIN
--   v_pw_hash := extensions.crypt(v_password, extensions.gen_salt('bf', 10));
--   INSERT INTO public.players (name, updated_at)
--   VALUES (v_username, NOW())
--   RETURNING * INTO v_player;
--   INSERT INTO public.player_accounts (player_id, username, password_hash, must_reset_password, updated_at)
--   VALUES (v_player.id, v_username, v_pw_hash, FALSE, NOW());
-- END;
-- $$;
