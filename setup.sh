#!/bin/bash

set -e

DOTFILES_DIR="$(pwd)"
CONFIG_DIR="$HOME/.config"

for dir in hypr kitty waybar; do
    rm -rf "$CONFIG_DIR/$dir"
    ln -s "$DOTFILES_DIR/$dir" "$CONFIG_DIR/$dir"
done
