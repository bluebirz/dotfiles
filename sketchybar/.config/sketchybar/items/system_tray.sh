#!/bin/sh

source $HOME/.config/sketchybar/dir_const.sh
source $HOME/.config/sketchybar/constants.sh

opts_battery=(
  icon.padding_left=0
  icon.padding_right=$ICON_PADDING_LR
  update_freq=120 
  script="$PLUGIN_DIR/battery.sh"
  label.drawing=off
)
opts_volume=(
  icon.padding_left=0
  icon.padding_right=$ICON_PADDING_LR
  script="$PLUGIN_DIR/volume.sh"
  label.drawing=off
)
opts_input_alias=(
  icon.padding_left=-$ICON_PADDING_LR
  label.padding_right=-$LABEL_PADDING_LR
  icon.drawing=on
  icon.color=$ICON_COLOR
  label.drawing=off
)

sketchybar --add item battery "$1" --set battery "${opts_battery[@]}" --subscribe battery system_woke power_source_change
sketchybar --add item volume "$1" --set volume  "${opts_volume[@]}" --subscribe volume volume_change
sketchybar --add alias "TextInputMenuAgent,Item-0" "$1" \
  --rename "TextInputMenuAgent,Item-0" input_alias \
  --set input_alias  "${opts_input_alias[@]}" \
  --add event input_change AppleSelectedInputSourcesChangedNotification \
  --subscribe input_alias input_change system_woke

sketchybar --add bracket sytem_tray battery volume input_alias
