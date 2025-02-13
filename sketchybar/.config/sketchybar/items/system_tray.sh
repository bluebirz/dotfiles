#!/bin/sh

source $HOME/.config/sketchybar/dir_const.sh
source $HOME/.config/sketchybar/constants.sh

opts_battery=(
  icon.padding_left=$SPACE_ICON_PADDDING_L
  icon.padding_right=$SPACE_ICON_PADDDING_R
  update_freq=120 
  script="$PLUGIN_DIR/battery.sh"
  label.drawing=off
  background.color=$SPACE_BACKGROUND_COLOR
  background.border_color=$SPACE_BACKGROUND_BORDER_WIDTHOR
  background.border_width=$SPACE_BACKGROUND_BORDER_WIDTH
)
opts_volume=(
  icon.padding_left=0
  icon.padding_right=$ICON_PADDING_R
  script="$PLUGIN_DIR/volume.sh"
  label.drawing=off
  background.color=$SPACE_BACKGROUND_COLOR
  background.border_color=$SPACE_BACKGROUND_BORDER_WIDTHOR
  background.border_width=$SPACE_BACKGROUND_BORDER_WIDTH
)
opts_alias=(
  # icon.padding_left="-$ICON_PADDING_LR"
  # icon.padding_right="-$ICON_PADDING_LR"
  # label.padding_right=-$LABEL_PADDING_LR
  padding_left=$ALIAS_PADDING_L
  padding_right=$ALIAS_PADDING_R
  icon.drawing=on
  alias.color=$ICON_COLOR
  alias.scale=$ALIAS_ICON_SCALE
  label.drawing=off
  background.color=$SPACE_BACKGROUND_COLOR
  background.border_color=$SPACE_BACKGROUND_BORDER_WIDTHOR
  background.border_width=$SPACE_BACKGROUND_BORDER_WIDTH
)

sketchybar --add item battery "$1" --set battery "${opts_battery[@]}" --subscribe battery system_woke power_source_change
# sketchybar --add item volume "$1" --set volume  "${opts_volume[@]}" --subscribe volume volume_change
# sketchybar --add alias "Control Center,Battery" "$1" \
#   --rename "Control Center,Battery" battery_alias \
#   --set battery_alias  "${opts_alias[@]}" \
#   --subscribe battery system_woke power_source_change
sketchybar --add alias "TextInputMenuAgent,Item-0" "$1" \
  --rename "TextInputMenuAgent,Item-0" input_alias \
  --set input_alias  "${opts_alias[@]}" \
  --add event input_change AppleSelectedInputSourcesChangedNotification \
  --subscribe input_alias input_change system_woke
sketchybar --add alias "Control Center,Sound" "$1" \
  --rename "Control Center,Sound" sound_alias \
  --set sound_alias  "${opts_alias[@]}" \
  --subscribe volume volume_change
sketchybar --add alias "Amphetamine,Amphetamine" "$1" \
  --rename "Amphetamine,Amphetamine" amph_alias \
  --set amph_alias  "${opts_alias[@]}" \
  # --subscribe volume volume_change

sketchybar --add bracket sytem_tray \
  battery \
  sound_alias \
  input_alias \
  amph_alias
