source $HOME/.config/sketchybar/dir_const.sh
source $HOME/.config/sketchybar/constants.sh

opts=(
  script="$PLUGIN_DIR/front_app.sh"
  # label.font.style="Bold"
  # icon.background.drawing=on
  icon.padding_left=$ICON_PADDING_LR
  icon.padding_right$ICON_PADDING_LR
  label.padding_right=$LABEL_PADDING_LR
  padding_left=$DEFAULT_PADDING_LR
  padding_right=$DEFAULT_PADDING_LR
)

sketchybar --add item front_app left --set front_app "${opts[@]}" --subscribe front_app front_app_switched
