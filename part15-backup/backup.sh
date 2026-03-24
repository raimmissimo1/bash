#!/bin/bash

SOURCE_DIR="$HOME/Pictures"
BACKUP_DIR="$HOME/backups"
LOG_FILE="$BACKUP_DIR/backup.log"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup_$DATE.tar.gz"
RETENTION_DAYS=7

mkdir -p "$BACKUP_DIR"

if [ ! -d "$SOURCE_DIR" ]; then
    echo "[$DATE] ERROR: source folder not found: $SOURCE_DIR" >> "$LOG_FILE"
    exit 1
fi

tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "[$DATE] SUCCESS: $BACKUP_NAME created" >> "$LOG_FILE"
else
    echo "[$DATE] ERROR: backup failed" >> "$LOG_FILE"
    exit 1
fi

find "$BACKUP_DIR" -type f -name "backup_*.tar.gz" -mtime +$RETENTION_DAYS -delete

echo "[$DATE] Cleanup complete" >> "$LOG_FILE"
echo "Backup done"
