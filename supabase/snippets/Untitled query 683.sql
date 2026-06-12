create table public.player_accounts (
  id uuid not null default gen_random_uuid (),
  player_id uuid not null,
  username text not null,
  password_hash text not null,
  must_reset_password boolean not null default true,
  created_at timestamp with time zone not null default now(),
  updated_at timestamp with time zone not null default now(),
  constraint player_accounts_pkey primary key (id),
  constraint player_accounts_player_id_key unique (player_id),
  constraint player_accounts_player_id_fkey foreign KEY (player_id) references players (id) on delete CASCADE,
  constraint player_accounts_username_format_chk check ((username ~ '^[a-zA-Z0-9._-]{3,30}$'::text))
) TABLESPACE pg_default;

create unique INDEX IF not exists idx_player_accounts_username_lower on public.player_accounts using btree (lower(username)) TABLESPACE pg_default;