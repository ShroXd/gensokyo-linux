#!/bin/bash

CURRENT_DATE=$(date + "%Y-%m-%d")
BACKUP_FOLDER="$(pwd)/../config"

BACKUP_DIR="$BACKUP_FOLDER/$CURRENT_DATE"

# Create a backup folder with the current date as its name
mkdir -p "$BACKUP_DIR"

# Backup system environment file
cp /etc/environment "$BACKUP_DIR"
echo "Config file /etc/environment backed up to $BACKUP_DIR"
