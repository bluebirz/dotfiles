#!/bin/bash

source $HOME/.config/sketchybar/dir_const.sh
source $HOME/.config/sketchybar/constants.sh

opts=(
  icon.font="$APPICON_FONT:$APPICON_WEIGHT:$APPICON_SIZE"
  script="$PLUGIN_DIR/front_app.sh"
  icon.padding_left=$APPICON_PADDING_LR
  icon.padding_right=$ICON_PADDING_LR
  label.padding_right=$LABEL_PADDING_LR
)

sketchybar --add item front_app "$1" --set front_app "${opts[@]}" --subscribe front_app front_app_switched
