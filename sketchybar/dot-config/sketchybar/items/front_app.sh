#!/bin/bash

source $HOME/.config/sketchybar/dir_const.sh
source $HOME/.config/sketchybar/constants.sh

opts=(
  icon.font="$APPICON_FONT:$APPICON_WEIGHT:$APPICON_SIZE"
  script="$PLUGIN_DIR/front_app.sh"
  icon.padding_left=$APPICON_PADDING_L
  icon.padding_right=$APPICON_PADDING_R
  label.padding_right=$LABEL_PADDING_R
)

sketchybar --add item front_app "$1" --set front_app "${opts[@]}" --subscribe front_app front_app_switched
