apple_logo=(
  icon=""
  padding_left=0
  icon.color=0xffffffff
  icon.font.size=21
  icon.y_offset=2
  icon.padding_left=0
  icon.padding_right=0
  label.padding_left=0
  label.padding_right=3
  # icon.color=$RED_BORDER
  click_script="open -a 'System Preferences'; sketchybar --set apple.logo popup.drawing=off"
  # background.color="$BACKGROUND"
  # background.corner_radius=8
  # background.border_color="$RED_BORDER"
  background.drawing=off
)

sketchybar --add item apple left --set apple "${apple_logo[@]}"
