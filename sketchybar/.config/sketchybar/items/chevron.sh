source $HOME/.config/sketchybar/color.sh
source $HOME/.config/sketchybar/constants.sh

opts=(
  icon=''
  label.drawing=off
  icon.color=$ORANGE
  background.drawing=off
  icon.padding_left=$ICON_PADDING_LR
  # icon.padding_right=$ICON_PADDING_LR
)

sketchybar --add item chevron "$1" --set chevron "${opts[@]}"
