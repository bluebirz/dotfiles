source $HOME/.config/sketchybar/dir_const.sh

opts=(
  icon.padding_left=$ICON_PADDING_L
  icon.padding_right=$ICON_PADDING_R
  label.padding_right=$LABEL_PADDING_R
  update_freq=10
  script="$PLUGIN_DIR/clock.sh"
)

sketchybar --add item clock "$1" --set clock "${opts[@]}"
