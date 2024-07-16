#!/bin/bash

sketchybar --add item volume right \
  --set volume script="$PLUGIN_DIR/volume.sh" \
  background.drawing=off \
  icon.color=$ACCENT_COLOR \
  label.color=$ACCENT_COLOR \
  --subscribe volume volume_change
