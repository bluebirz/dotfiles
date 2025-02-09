opts=(
  # label.color=$ACCENT_COLOR
  label.max_chars=20
  # icon.padding_left=0
  scroll_texts=on
  # icon=
  # label="Loading…"
  # icon.color=$ACCENT_COLOR
  # background.drawing=off
  script="$PLUGIN_DIR/media.sh"
  updates=on
)

sketchybar --add item media right --set media drawing=off "${opts[@]}" --subscribe media media_change system_woke
