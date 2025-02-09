#!/bin/bash

PLAYER_STATE="$(echo $INFO | jq -r '.state')"

if [ "$PLAYER_STATE" = "playing" ]; then
  CURRENT_SONG="$(echo $INFO | jq -r '.title + "-" + .artist')"
  sketchybar --set $NAME label="$CURRENT_SONG" icon="" drawing=on icon.drawing=on
else
  sketchybar --set $NAME drawing=off icon.drawing=off
fi
