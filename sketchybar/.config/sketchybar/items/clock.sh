source $HOME/.config/sketchybar/dir_const.sh

sketchybar --add item clock right --set clock update_freq=10 script="$PLUGIN_DIR/clock.sh"
