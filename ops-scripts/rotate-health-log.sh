#!/bin/bash

set -e

LOG_FILE="$HOME/first-project/ops-scripts/health-check.log"
ARCHIVE_DIR="$HOME/first-project/ops-scripts/log-archive"
TIMESTAMP="$(date '+%Y-%m-%d_%H-%M-%S')"

mkdir -p "$ARCHIVE_DIR"

if [ -f "$LOG_FILE" ]; then
    mv "$LOG_FILE" "$ARCHIVE_DIR/health-check-$TIMESTAMP.log"
    touch "$LOG_FILE"
    echo "Archived health-check log to $ARCHIVE_DIR/health-check-$TIMESTAMP.log"
else
    echo "No health-check.log file found."
fi
