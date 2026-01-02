#!/bin/bash

# This script runs whenever you switch spaces
if [ "$SELECTED" = "true" ]; then
  sketchybar --set $NAME background.drawing=on background.color=0xffffffff icon.color=0xff000000
else
  sketchybar --set $NAME background.drawing=off icon.color=0xffffffff
fi
