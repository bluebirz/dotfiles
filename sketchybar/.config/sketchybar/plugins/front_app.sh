#!/bin/sh

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

# if [ "$SENDER" = "front_app_switched" ]; then
#   sketchybar --set "$NAME" label="$INFO"
# fi
# ICON_COLOR=0xffff7f17
ICON_COLOR=0xffffffff

if [ "$SENDER" = "front_app_switched" ]; then
  app_name=$(echo "$INFO" | awk '{print tolower($0)}')
  case $app_name in
  "arc") ICON_PADDING_RIGHT=5 ICON=󰞍 ;;
  "books") ICON= ;;
  "calendar") ICON= ;;
  "code") ICON_PADDING_RIGHT=2 ICON_COLOR=0xff22a1f0 ICON=󰨞 ;;
  "discord") ICON_COLOR=0xff5b5bf5 ICON=󰙯 ;;
  "facetime") ICON= ;;
  "finder") ICON_COLOR=0xff40b9ff ICON=󰀶 ;;
  "firefox") ICON=󰈹 ;;
  "font book") ICON= ;;
  "goodlinks") ICON= ;;
  "goodnotes") ICON=󱓧 ;;
  "google chrome") ICON= ;;
  "iina") ICON=󰕼 ;;
  "keynote") ICON=󰐨 ;;
  "kitty") ICON=󰄛 ;;
  "messages") ICON=󰍦 ;;
  "microsoft edge") ICON= ;;
  "microsoft teams") ICON=󰊻 ;;
  "money pro") ICON= ;;
  "music") ICON=󰝚 ;;
  "notes") ICON= ;;
  "notion") ICON_COLOR=#ff000000 ICON=󰈄 ;;
  "numbers") ICON=󰄨 ;;
  "numi") ICON=󰇽 ;;
  "pages") ICON=󱦹 ;;
  "preview") ICON_COLOR=0xff137DF8 ICON= ;;
  "ps remote play") ICON= ;;
  "reminders") ICON= ;;
  "safari") ICON= ;;
  "slack") ICON=󰒱 ;;
  "spotify") ICON_COLOR=0xff24D44E ICON= ;;
  "system settings") ICON= ;;
  "textedit") ICON= ;;
  "transmission") ICON=󰶘 ;;
  "weather") ICON= ;;
  # *) ICON_COLOR=0xffff94c6 ICON=﯂ ;;
  esac

  sketchybar --set $NAME \
    icon=$ICON icon.color=$ICON_COLOR \
    label="$INFO"
fi
