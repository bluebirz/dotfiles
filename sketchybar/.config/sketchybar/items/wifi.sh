opts=(
  script="$PLUGIN_DIR/wifi.sh"
  click_script="open /System/Library/PreferencePanes/Network.prefPane/"
  # background.color="$BACKGROUND"
  # background.corner_radius=8
  # background.border_color="$COLOR11"
  icon.padding_left=$ICON_PADDING_LR
  icon.padding_right=$ICON_PADDING_LR
  label.padding_right=$LABEL_PADDING_LR
)

sketchybar --add item wifi "$1" --set wifi "${opts[@]}" --subscribe wifi wifi_change
