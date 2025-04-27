#!/bin/bash

# === CONFIGURATION ===
SOURCE_DIR="/path/to/your/source"        # Directory to back up
BACKUP_DIR="/path/to/your/backups"        # Directory where backups will be stored
MAX_BACKUPS=5                             # Maximum number of backups to keep

# === BACKUP CREATION ===
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_name="backup_$timestamp.tar.gz"

mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/$backup_name" -C "$SOURCE_DIR" .

echo "Backup created: $backup_name"

# === BACKUP ROTATION ===
backup_count=$(ls -1 "$BACKUP_DIR" | wc -l)

if [ "$backup_count" -gt "$MAX_BACKUPS" ]; then
    files_to_delete=$((backup_count - MAX_BACKUPS))
    echo "Rotating backups... Deleting $files_to_delete old backup(s)."
    ls -1t "$BACKUP_DIR" | tail -n $files_to_delete | while read old_backup; do
        rm -f "$BACKUP_DIR/$old_backup"
        echo "Deleted: $old_backup"
    done
else
    echo "No rotation needed."
fi