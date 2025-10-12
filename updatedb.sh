#!/bin/bash
set -euo pipefail

# Minimal environment for cron
export SHELL=/bin/bash
export PATH="/usr/local/bin:/usr/bin:/bin"
LOG="$HOME/Desktop/updatedb.log"

timestamp() { date "+%Y-%m-%d %H:%M:%S"; }

{
  echo "[$(timestamp)] Starting DB setup via docker exec"

  # Optional: sanity checks
  /usr/local/bin/docker version >/dev/null 2>&1 || { echo "[$(timestamp)] docker not available"; exit 127; }
  /usr/local/bin/docker ps >/dev/null 2>&1 || { echo "[$(timestamp)] cannot talk to docker daemon (permissions?)"; exit 1; }

  # Run the command
  if /usr/local/bin/docker exec -i postgres /setup_db.sh; then
    echo "[$(timestamp)] Database setup completed" >> "$LOG"
  else
    echo "[$(timestamp)] Database setup FAILED" >> "$LOG"
    exit 1
  fi
}

"name": "hhd800 com@idbd 977"} @ sceneByName
