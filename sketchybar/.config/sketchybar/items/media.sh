source $HOME/.config/sketchybar/constants.sh

opts=(
  label.max_chars=$MEDIA_MAX_CHARS
  scroll_texts=on
  script="$PLUGIN_DIR/media.sh"
  updates=on
  icon.padding_left=$ICON_PADDING_L
  icon.padding_right=$ICON_PADDING_R
  label.padding_right=$LABEL_PADDING_R
)

sketchybar --add item media "$1" --set media drawing=off "${opts[@]}" --subscribe media media_change system_woke
