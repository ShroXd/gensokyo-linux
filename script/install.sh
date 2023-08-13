#!/bin/bash

REPO_DIR="$(git rev-parse --show-toplevel)"

# Sync lazy nvim config
ln -s "$REPO_DIR/config/nvim" "$HOME/.config/nvim"

