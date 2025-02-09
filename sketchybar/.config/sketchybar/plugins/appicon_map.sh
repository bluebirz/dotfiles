function icon_map() {
  app_name=$(echo "$1" | awk '{print tolower($0)}')
  case $app_name in
  "arc") ICON=󰞍 ;;
  "app store") ICON= ;;
  "books") ICON= ;;
  "calendar") ICON= ;;
  "clock") ICON= ;;
  "code") ICON=󰨞 ;;
  "contacts") ICON= ;;
  "discord") ICON=󰙯 ;;
  "facetime") ICON= ;;
  "finder") ICON=󰀶 ;;
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
  "notion") ICON=󰈄 ;;
  "numbers") ICON=󰄨 ;;
  "numi") ICON=󰇽 ;;
  "pages") ICON=󱦹 ;;
  "passwords") ICON=󱕵 ;;
  "photos") ICON=󰴈 ;;
  "podcasts") ICON= ;;
  "postman") ICON= ;;
  "preview") ICON= ;;
  "ps remote play") ICON= ;;
  "reminders") ICON= ;;
  "safari") ICON= ;;
  "slack") ICON=󰒱 ;;
  "spotify") ICON= ;;
  "system settings") ICON= ;;
  "telegram") ICON= ;;
  "textedit") ICON= ;;
  "transmission") ICON=󰶘 ;;
  "vscode") ICON= ;;
  "vscodium") ICON= ;;
  "weather") ICON= ;;
  # *) ICON_COLOR=0xffff94c6 ICON=﯂ ;;
  esac
}

icon_map "$1"
echo "$icon"
