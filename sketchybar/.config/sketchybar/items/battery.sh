source $HOME/.config/sketchybar/dir_const.sh

opts=(
  update_freq=120
  script="$PLUGIN_DIR/battery.sh"
)

sketchybar --add item battery right --set battery "${opts[@]}" --subscribe battery system_woke power_source_change
