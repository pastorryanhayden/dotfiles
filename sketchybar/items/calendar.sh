#!/bin/bash

sketchybar --add item calendar right \
  --set calendar icon=􀧞 \
  update_freq=30 \
  background.drawing=off \
  icon.color=$ACCENT_COLOR \
  label.color=$ACCENT_COLOR \
  icon.font="sketchybar-app-font:Regular:16.0" \
  script="$PLUGIN_DIR/calendar.sh"
