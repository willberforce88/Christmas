# Christmas Radio 1924

A festive web-radio front-end preview with animated snowfall, a PIN entrance screen, and a local MP3 player.

## Important: this is a front-end preview

- The PIN `1924` is currently checked in browser JavaScript. It is **not secure** and must not be treated as real access control.
- MP3 files selected in the preview stay in that browser session on that device. They are not uploaded to a server.
- There is no cross-device synchronisation in this preview yet.
- Do not upload private audio or secrets to a public GitHub repository.

## Preview locally

Open `index.html` in a modern browser. Enter `1924`, then choose your own MP3 files.

## Planned cloud version

The next stage should add:
1. Server-side PIN authentication (never store the PIN in public JavaScript).
2. Private cloud object storage for your original recordings.
3. A shared realtime station-state record: current track, play/pause, playback start timestamp, and queue position.
4. A realtime subscription on every device. Clients calculate playback position from the shared server timestamp to stay aligned.
5. Signed/authorised audio URLs so the music library is not publicly browsable.

A free Supabase project is one possible starter backend. Its current free tier lists 1 GB file storage, 5 GB uncached egress plus 5 GB cached egress, a 50 MB maximum file size, and projects can pause after a week of inactivity. This means it is suitable for a small prototype, not unlimited music streaming. Check current limits before relying on it.

## Suggested repository layout

- `index.html` — current visual prototype
- `supabase/schema.sql` — initial database table for shared station state

## Spotify

Keep Spotify separate from the shared MP3 broadcast. Spotify's developer policy prohibits non-interactive webcasting and synchronising Spotify recordings as part of a broadcast. Use Spotify only in ways permitted by its official player and policies.
