#!/bin/bash

#CURRENT_DATE=$(date "+%Y-%m-%d")
REPO_DIR="$(git rev-parse --show-toplevel)"

# Start backup config files

#CONFIG_BACKUP_DIR="$REPO_DIR/config/$CURRENT_DATE"
CONFIG_BACKUP_DIR="$REPO_DIR/config"

# Create a backup folder with the current date as its name
mkdir -p "$CONFIG_BACKUP_DIR"

# Backup system environment file
if [[ -f /etc/environment ]]; then
	cp /etc/environment "$CONFIG_BACKUP_DIR"
	echo "Config file /etc/environment backed up to $CONFIG_BACKUP_DIR"
else
	echo "Error: /etc/environment not found!"
	exit 1
fi
