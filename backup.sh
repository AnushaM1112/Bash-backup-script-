#!/bin/bash

# ====== Folder Paths ======
SOURCE_FOLDER=./documents
BACKUP_FOLDER=./backups

# ====== Timestamp Format ======
DATE=$(date +%Y-%m-%d-%H%M)

# ====== Create Backup Folder if Not Exists ======
mkdir -p "$BACKUP_FOLDER"

# ====== Run the Backup ======
tar -czf "$BACKUP_FOLDER/backup-$DATE.tar.gz" "$SOURCE_FOLDER" 2>/dev/null

# ====== Show Output ======
if [ $? -eq 0 ]; then
    echo "✅ Backup complete: backup-$DATE.tar.gz"
else
    echo "❌ Backup failed. Check if the source folder exists."
fi
