source $HOME/.config/sketchybar/dir_const.sh

opts=(
  icon.padding_left=$ICON_PADDING_L
  icon.padding_right=$ICON_PADDING_R
  label.padding_right=$LABEL_PADDING_R
  update_freq=120
  script="$PLUGIN_DIR/calendar.sh"
)
sketchybar --add item calendar "$1" --set calendar "${opts[@]}"
