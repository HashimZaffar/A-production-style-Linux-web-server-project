#!/bin/bash

set -e

TIMESTAMP="$(date '+%Y-%m-%d_%H-%M-%S')"
BACKUP_DIR="$HOME/backups"
BACKUP_FILE="$BACKUP_DIR/first-project-backup-$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_FILE" \
    /var/www/first-project \
    /etc/nginx/sites-available/first-project \
    /etc/nginx/sites-enabled/first-project

echo "Backup created successfully:"
echo "$BACKUP_FILE"
