#!/bin/bash

opts=(
  icon.drawing=on
  label.drawing=off
  alias.color="$WHITE"
  # background.padding_right=0
  # background.padding_left=0
  # width=35
)

sketchybar --add alias "TextInputMenuAgent,Item-0" right \
  --add event input_change "AppleSelectedInputSourcesChangedNitification" \
  --rename "TextInputMenuAgent,Item-0" input_alias \
  --set input_alias "${opts[@]}" --subscribe input_alias input_change system_woke
