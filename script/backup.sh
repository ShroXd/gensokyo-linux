#!/bin/bash

REPO_DIR="$(git rev-parse --show-toplevel)"

# --------- Backup env files -----------------------------------------------------------------

ENV_BACKUP_DIR="$REPO_DIR/env"
mkdir -p "$ENV_BACKUP_DIR"

# Backup system environment file

if [[ -f /etc/environment ]]; then
	cp /etc/environment "$ENV_BACKUP_DIR"
	echo "Config file /etc/environment backed up to $ENV_BACKUP_DIR"
else
	echo "Error: /etc/environment not found!"
	exit 1
fi

# Backup list of installed packages

pacman -Qqe >"$ENV_BACKUP_DIR/pkglist.txt"
echo "List of installed packages backed up to $ENV_BACKUP_DIR"

# --------- Commit backup -----------------------------------------------------------------

CURRENT_DATE=$(date "+%Y-%m-%d")

git add .
git commit -m "$CURRENT_DATE - Manually backup"
git push
