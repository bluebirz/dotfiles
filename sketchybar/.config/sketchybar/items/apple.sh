source $HOME/.config/sketchybar/color.sh
source $HOME/.config/sketchybar/constants.sh

apple_logo=(
  icon=""
  padding_left=$DEFAULT_PADDING_LR
  icon.color=$APPLE_ICON_COLOR
  icon.font.size=$APPLE_ICON_SIZE
  icon.y_offset=$APPLE_Y_OFFSET
  icon.padding_left=$ICON_PADDING_LR
  icon.padding_right=$ICON_PADDING_LR
  # icon.color=$RED_BORDER
  click_script="open -a 'System Preferences'; sketchybar --set apple.logo popup.drawing=off"
  # background.color="$BACKGROUND"
  # background.corner_radius=8
  # background.border_color="$RED_BORDER"
  # background.drawing=off
)

sketchybar --add item apple left --set apple "${apple_logo[@]}"
