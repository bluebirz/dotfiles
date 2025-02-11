source $HOME/.config/sketchybar/dir_const.sh

opts=(
  icon.padding_left=$ICON_PADDING_LR
  icon.padding_right=$ICON_PADDING_LR
  label.padding_right=$LABEL_PADDING_LR
  update_freq=10
  script="$PLUGIN_DIR/clock.sh"
)

sketchybar --add item clock right --set clock "${opts[@]}"
