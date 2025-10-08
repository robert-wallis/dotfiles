#!/bin/bash

# Start hyprpaper if it's not running
if ! pgrep -x hyprpaper >/dev/null; then
  hyprpaper &
  sleep 1
fi

# Unload all existing wallpapers
hyprctl hyprpaper unload all

# Find a random wallpaper
WALLPAPER=$(find "$HOME/Pictures/Bing Wallpapers/" -type f | shuf -n 1)

# Preload the new wallpaper
hyprctl hyprpaper preload "$WALLPAPER"

# Set the new wallpaper
hyprctl hyprpaper wallpaper "HDMI-A-1,$WALLPAPER"
