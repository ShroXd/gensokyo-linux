#!/bin/bash

REPO_DIR="$(git rev-parse --show-toplevel)"

# --------------------------------------------------------------

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

# --------------------------------------------------------------

# Sync lazy bspwm config
BSPWM_LINK_NAME="$HOME/.config/bspwm"

# Check if ~/.config/nvim exists
if [ -d "$BSPWM_LINK_NAME" ]; then
	# If the directory exists, back it up as nvim-backup
	BACKUP_NAME="$HOME/.config/bspwm-backup"
	echo "Backing up existing bspwm directory to $BACKUP_NAME"
	mv "$BSPWM_LINK_NAME" "$BACKUP_NAME"
fi

ln -s "$REPO_DIR/config/bspwm" "$BSPWM_LINK_NAME"

# --------------------------------------------------------------

# Sync .zshrc

ZSH_LINK_NAME="$HOME/.zshrc"

# Check if ~/.zshrc exists
if [ -e "$ZSH_LINK_NAME" ]; then
	# If the directory exists, back it up as nvim-backup
	BACKUP_NAME="$HOME/.zshrc-backup"
	echo "Backing up existing nvim directory to $BACKUP_NAME"
	mv "$ZSH_LINK_NAME" "$BACKUP_NAME"
fi

ln -s "$REPO_DIR/config/.zshrc" "$ZSH_LINK_NAME"
