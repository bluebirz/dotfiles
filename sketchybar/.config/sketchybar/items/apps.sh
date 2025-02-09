source $HOME/.config/sketchybar/dir_const.sh

opts=(
  script="$PLUGIN_DIR/front_app.sh"
  label.font.style="Bold"
  icon.padding_left=20
  label.padding_right=20
)

sketchybar --add item front_app center --set front_app "${opts[@]}" --subscribe front_app front_app_switched
