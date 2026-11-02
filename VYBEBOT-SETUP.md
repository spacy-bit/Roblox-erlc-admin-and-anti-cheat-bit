# VybeBot Anti-Cheat integration

This is your existing bot source with a new anti-cheat API router; no existing commands removed.

## Secrets & Configs
Set `AC_API_KEY` to a random string of 32+ characters and `AC_DISCORD_WEBHOOK` to the Discord webhook URL. Keep `DISCORD_TOKEN` and `DISCORD_CLIENT_ID` unchanged. Set `PERSISTENT_DATA_DIR=/app/data` if not already configured. Set `PORT=80` to match your Branch Domain port 80 (or change the domain port to the actual app port).

## Build & deploy
Deploy this source branch through VybeBot; the existing build/start scripts are unchanged. The API now starts even when `DASHBOARD_ENABLED` is false. Health endpoint: `GET /health`; evidence endpoint: `POST /api/anticheat/report` with `x-ac-key` header. Deploy must be running, not stopped.

## Roblox test
Enable Game Settings > Security > Allow HTTP Requests. Put `Roblox-ConnectionTest.server.lua` in ServerScriptService; insert the same AC_API_KEY; run Studio Play and check Output for HTTP 202. Check Discord for a PNG attachment. Delete the test script afterward.

## Important
Only reconstructed top-down movement PNG is generated. This is not a screenshot. MP4 rendering is NOT included because the VybeBot runtime's FFmpeg availability has not been confirmed. This first version saves JSON and PNG under /app/data/anticheat; add retention/quotas before production. Test without kicking or banning. Do not commit real keys.
