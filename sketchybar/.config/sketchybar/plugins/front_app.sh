#!/bin/sh

ICON_COLOR=0xffffffff

if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --set "$NAME" icon.background.image="app.$INFO" icon.background.image.scale=.7 label="$INFO"
fi
