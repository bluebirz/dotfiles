source $HOME/.config/sketchybar/dir_const.sh
source $HOME/.config/sketchybar/color.sh
source $HOME/.config/sketchybar/constants.sh

SPACE_ICONS=("一" "二" "三" "四" "五" "六" "七" "八" "九" "十")

whole_spaces_opts=(
  background.color=$SPACESET_BACKGROUND_COLOR
  background.corner_radius=$SPACESET_BACKGROUND_CORNER_RADIUS
  # background.border_color=$RED
)

each_space_opts=(
  icon.padding_left=$ICON_PADDING_LR
  icon.padding_right=$ICON_PADDING_LR
  background.color=$SPACE_BACKGROUND_COLOR
  background.border_color=$TRANSPARENT
  background.border_width=$SPACE_BACKGROUND_BORDER_WIDTH
  label.drawing=off
  icon.color=$SPACE_ICON_INACTIVE_COLOR
  icon.highlight_color=$SPACE_ICON_ACTIVE_COLOR
  # label.color="$GREY"
  # label.highlight_color="$WHITE"
  script="$PLUGIN_DIR/space.sh"
)

declare -a spaces=()
for i in "${!SPACE_ICONS[@]}"; do
  sid="$(($i + 1))"
  spaces+=(space."$sid")

  sketchybar --add space space."$sid" left \
    --set space."$sid" associated_space=$sid icon=${SPACE_ICONS[i]} "${each_space_opts[@]}"
done

sketchybar --add bracket spaces "${spaces[@]}" --set spaces "${whole_spaces_opts[@]}"
