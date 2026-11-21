-- Initial schema for Christmas Radio 1924 shared station state.
-- Do not apply this as a public unauthenticated table. Add authenticated RLS policies
-- only after server-side PIN authentication is implemented.

create table if not exists public.station_state (
  id integer primary key default 1 check (id = 1),
  track_id text,
  is_playing boolean not null default false,
  position_seconds double precision not null default 0,
  started_at timestamptz,
  updated_at timestamptz not null default now()
);

alter table public.station_state enable row level security;

-- Intentionally no public policies here.
-- Add policies for authenticated users after the private access flow is configured.

alter publication supabase_realtime add table public.station_state;
