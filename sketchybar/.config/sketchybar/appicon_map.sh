function icon_map() {
  app_name=$(echo "$1" | awk '{print tolower($0)}')
  case $app_name in
  "alacritty") icon_result=:alacritty: ;;
  "app store") icon_result=:app_store: ;;
  "books") icon_result=:book: ;;
  "calculator") icon_result=:calculator: ;;
  "calendar") icon_result=:calendar: ;;
  "calibre") icon_result=:calibre: ;;
  "clock") icon_result=:clock: ;;
  "code") icon_result=:code: ;;
  # "contacts") icon_result= ;;
  "digital color meter") icon_result=:color_picker: ;;
  "discord") icon_result=:discord: ;;
  "facetime") icon_result=:face_time: ;;
  "finder") icon_result=:finder: ;;
  "firefox") icon_result=:firefox: ;;
  "font book") icon_result=:text: ;;
  "freeform") icon_result=:freeform: ;;
  "ghostty") icon_result=":ghostty:" ;;
  # "goodlinks") icon_result= ;;
  # "goodnotes") icon_result=󱓧 ;;
  "google chrome") icon_result=:google_chrome: ;;
  "infuse") icon_result=:infuse: ;;
  "iterm2") icon_result=:iterm: ;;
  "keynote") icon_result=:keynote: ;;
  "kitty") icon_result=:kitty: ;;
  "line") icon_result=:line: ;;
  "mail") icon_result=:mail: ;;
  "messages") icon_result=:messages: ;;
  "microsoft edge") icon_result=:microsoft_edge: ;;
  "microsoft teams") icon_result=:microsoft_teams: ;;
  "money pro") icon_result=:dollar: ;;
  "music") icon_result=:music: ;;
  # "netnewswire") icon_result= ;;
  "notes") icon_result=:notes: ;;
  "notion") icon_result=:notion: ;;
  "numbers") icon_result=:numbers: ;;
  # "numi") icon_result=󰇽 ;;
  "orbstack") icon_result=:orbstack: ;;
  "obsidian") icon_result=:obsidian: ;;
  "pages") icon_result=:pages: ;;
  "passwords") icon_result=:passwords: ;;
  "photos") icon_result=:photos: ;;
  "podcasts") icon_result=:podcasts: ;;
  "postman") icon_result=:postman: ;;
  # "preview") icon_result= ;;
  # "ps remote play") icon_result= ;;
  "reminders") icon_result=:reminders: ;;
  "safari") icon_result=:safari: ;;
  "slack") icon_result=:slack: ;;
  "spotify") icon_result=:spotify: ;;
  "system settings") icon_result=:gear: ;;
  "telegram") icon_result=:telegram: ;;
  "terminal") icon_result=:terminal: ;;
  "textedit") icon_result=:textedit: ;;
  # "transmission") icon_result=󰶘 ;;
  # "vscode") icon_result=:code: ;;
  "vscodium") icon_result=:vscodium: ;;
  "weather") icon_result=:weather: ;;
  "wezterm") icon_result=:wezterm: ;;
  "zoom") icon_result=:zoom: ;;
  *) icon_result=:default: ;;
  esac
}

icon_map "$1"
echo "${icon_result}"
