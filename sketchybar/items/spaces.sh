#!/bin/bash

source "$CONFIG_DIR/colors.sh" # Loads all defined colors

for sid in $(aerospace list-workspaces --all); do
	sketchybar --add item space.$sid center \
		--subscribe space.$sid aerospace_workspace_change \
		--set space.$sid \
		background.color=$ACCENT_COLOR \
		background.corner_radius=5 \
		background.height=20 \
		background.drawing=off \
		label="$sid" \
		click_script="aerospace workspace $sid" \
		script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done
