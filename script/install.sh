#!/bin/bash

REPO_DIR="$(git rev-parse --show-toplevel)"

# Sync lazy nvim config
NVIM_LINK_NAME="$HOME/.config/nvim"

# Check if ~/.config/nvim exists
if [ -d "$NVIM_LINK_NAME" ]; then
	# If the directory exists, back it up as nvim-backup
	BACKUP_NAME="$HOME/.config/nvim-backup"
	echo "Backing up existing nvim directory to $BACKUP_NAME"
	mv "$NVIM_LINK_NAME" "$BACKUP_NAME"
fi

ln -s "$REPO_DIR/config/nvim" "$NVIM_LINK_NAME"
