#!/bin/bash

set -e

URL="https://first-project.34.238.244.58.sslip.io"
TIMESTAMP="$(date '+%Y-%m-%d %H:%M:%S')"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_FILE="$SCRIPT_DIR/health-check.log"

echo "[$TIMESTAMP] Running health check for $URL" | tee -a "$LOG_FILE"

if curl -I --silent --show-error --fail "$URL" > /dev/null; then
    echo "[$TIMESTAMP] SUCCESS: Site is reachable over HTTPS" | tee -a "$LOG_FILE"
else
    echo "[$TIMESTAMP] ERROR: Site is not reachable over HTTPS" | tee -a "$LOG_FILE"
    exit 1
fi
