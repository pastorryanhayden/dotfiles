#!/bin/bash

sketchybar --add item calendar right \
	--set calendar icon=􀧞 \
	update_freq=30 \
	background.color=$ACCENT_COLOR \
	icon.color=$TEXT_COLOR \
	icon.font="sketchybar-app-font:Regular:16.0" \
	label.color=$TEXT_COLOR \
	script="$PLUGIN_DIR/calendar.sh"
