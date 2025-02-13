#!/bin/sh
source $HOME/.config/sketchybar/constants.sh

sketchybar --add alias "TextInputMenuAgent,Item-0" right \
  --rename "TextInputMenuAgent,Item-0" input_alias \
  --set input_alias \
  icon.drawing=on label.drawing=off \
  icon.padding_left=-$ICON_PADDING_L \
  icon.padding_left=-$ICON_PADDING_L \
  --add event input_change AppleSelectedInputSourcesChangedNotification \
  --subscribe input_alias input_change system_woke
