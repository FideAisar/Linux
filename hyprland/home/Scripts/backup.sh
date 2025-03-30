#!/bin/bash

SOURCE_CONF_DIR="$HOME/.config"
SOURCE_HOME_DIR="$HOME"

DEST_CONF_DIR="$HOME/Documents/Linux/hyprland/home/.config"
DEST_HOME_DIR="$HOME/Documents/Linux/hyprland/home"

CONF_DIRS=("feh" "foot" "hypr" "nvim" "ranger" "rofi" "waybar")
HOME_DIRS=("Scripts")

mkdir -p "$DEST_CONF_DIR"
for dir in "${CONF_DIRS[@]}"; do
    if [ -d "$SOURCE_CONF_DIR/$dir" ]; then
        echo "Copying $SOURCE_CONF_DIR/$dir to $DEST_CONF_DIR/"
        sudo cp -r "$SOURCE_CONF_DIR/$dir" "$DEST_CONF_DIR/"
    else
        echo "Directory $SOURCE_CONF_DIR/$dir does not exist. Skipping."
    fi
done

echo -e "\033[1;32m.config completed\033[0m"

mkdir -p "$DEST_HOME_DIR"
for dir in "${HOME_DIRS[@]}"; do
    if [ -d "$SOURCE_HOME_DIR/$dir" ]; then
        echo "Copying $SOURCE_HOME_DIR/$dir to $DEST_HOME_DIR/"
        sudo cp -r "$SOURCE_HOME_DIR/$dir" "$DEST_HOME_DIR/"
    else
        echo "Directory $SOURCE_HOME_DIR/$dir does not exist. Skipping."
    fi
done

echo -e "\033[1;32mhome completed\033[0m"



