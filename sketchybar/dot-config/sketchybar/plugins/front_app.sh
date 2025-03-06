#!/bin/sh
source $HOME/.config/sketchybar/dir_const.sh

# ICON_COLOR=0xffffffff

if [ "$SENDER" = "front_app_switched" ]; then
  # sketchybar --set "$NAME" icon.background.image="app.$INFO" icon.background.image.scale=.7 label="$INFO"
  sketchybar --set "$NAME" icon="$($CONFIG_DIR/appicon_map.sh "$INFO")" label="$INFO"
fi
