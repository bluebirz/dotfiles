source $HOME/.config/sketchybar/dir_const.sh

SPACE_ICONS=("一" "二" "三" "四" "五" "六" "七" "八" "九" "十")

for i in "${!SPACE_ICONS[@]}"; do
  sid="$(($i + 1))"
  space=(
    space="$sid"
    icon="${SPACE_ICONS[i]}"
    icon.padding_left=7
    icon.padding_right=7
    background.color=0x40ffffff
    background.corner_radius=5
    background.height=25
    label.drawing=off
    script="$PLUGIN_DIR/space.sh"
    click_script="yabai -m space --focus $sid"
  )
  sketchybar --add space space."$sid" left --set space."$sid" "${space[@]}"
done
