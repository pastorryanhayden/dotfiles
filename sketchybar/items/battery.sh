#!/bin/bash

sketchybar --add item battery right \
  --set battery update_freq=120 \
  background.drawing=off \
  icon.color=$ACCENT_COLOR \
  label.color=$ACCENT_COLOR \
  script="$PLUGIN_DIR/battery.sh" \
  --subscribe battery system_woke power_source_change
