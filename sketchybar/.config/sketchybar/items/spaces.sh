source $HOME/.config/sketchybar/dir_const.sh
source $HOME/.config/sketchybar/color.sh
source $HOME/.config/sketchybar/constants.sh

SPACE_ICONS=("一" "二" "三" "四" "五" "六" "七" "八" "九" "十")

whole_spaces_opts=(
  background.color=$BLACK
  background.corner_radius=8
  # background.border_color=$RED
)

each_space_opts=(
  icon.padding_left=7
  icon.padding_right=7
  # background.color=0x40ffffff
  # background.corner_radius=5
  # background.height=25
  label.drawing=off
  icon.highlight_color="$BLUE"
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
