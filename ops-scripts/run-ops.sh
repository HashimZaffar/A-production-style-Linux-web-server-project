#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "===== Running site health check ====="
"$SCRIPT_DIR/health-check.sh"

echo
echo "===== Creating backup ====="
"$SCRIPT_DIR/backup-site.sh"

echo
echo "===== Checking logs ====="
"$SCRIPT_DIR/check-logs.sh"

echo
echo "===== Safe Nginx reload ====="
"$SCRIPT_DIR/safe-nginx-restart.sh"

echo
echo "Operations run completed successfully."
