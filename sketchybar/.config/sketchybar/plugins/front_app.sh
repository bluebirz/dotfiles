#!/bin/sh

ICON_COLOR=0xffffffff

if [ "$SENDER" = "front_app_switched" ]; then
  app_name=$(echo "$INFO" | awk '{print tolower($0)}')
  case $app_name in
  "arc") ICON_PADDING_RIGHT=5 ICON=󰞍 ;;
  "app store") ICON= ;;
  "books") ICON= ;;
  "calendar") ICON= ;;
  "clock") ICON= ;;
  "code") ICON_PADDING_RIGHT=2 ICON_COLOR=0xff22a1f0 ICON=󰨞 ;;
  "contacts") ICON= ;;
  "discord") ICON_COLOR=0xff5b5bf5 ICON=󰙯 ;;
  "facetime") ICON= ;;
  "finder") ICON_COLOR=0xff40b9ff ICON=󰀶 ;;
  "firefox") ICON=󰈹 ;;
  "font book") ICON= ;;
  "ghostty") ICON= ;;
  "goodlinks") ICON= ;;
  "goodnotes") ICON=󱓧 ;;
  "google chrome") ICON= ;;
  "keynote") ICON=󰐨 ;;
  "kitty") ICON=󰄛 ;;
  "mail") ICON= ;;
  "messages") ICON=󰍦 ;;
  "microsoft edge") ICON= ;;
  "microsoft teams") ICON=󰊻 ;;
  "money pro") ICON= ;;
  "music") ICON=󰝚 ;;
  "netnewswire") ICON= ;;
  "notes") ICON= ;;
  "notion") ICON_COLOR=#ff000000 ICON=󰈄 ;;
  "numbers") ICON=󰄨 ;;
  "numi") ICON=󰇽 ;;
  "pages") ICON=󱦹 ;;
  "passwords") ICON=󱕵 ;;
  "photos") ICON=󰴈 ;;
  "podcasts") ICON= ;;
  "postman") ICON= ;;
  "preview") ICON_COLOR=0xff137DF8 ICON= ;;
  "ps remote play") ICON= ;;
  "reminders") ICON= ;;
  "safari") ICON= ;;
  "slack") ICON=󰒱 ;;
  "spotify") ICON_COLOR=0xff24D44E ICON= ;;
  "system settings") ICON= ;;
  "telegram") ICON= ;;
  "textedit") ICON= ;;
  "transmission") ICON=󰶘 ;;
  "vscode") ICON= ;;
  "vscodium") ICON= ;;
  "weather") ICON= ;;
  # *) ICON_COLOR=0xffff94c6 ICON=﯂ ;;
  esac

  sketchybar --set $NAME icon=$ICON icon.color=$ICON_COLOR label="$INFO"
fi
