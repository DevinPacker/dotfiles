#!/usr/bin/env bash
if command -V bspc > /dev/null; then
  . "$HOME/.cache/wal/colors.sh"
  bspc config normal_border_color $background
  bspc config focused_border_color $foreground
  bspc config active_border_color $color8
  bspc config presel_feedback_color $foreground
fi

if command -V rofi > /dev/null; then
  echo "rofi.color-window: #C0${background:1:6}, #C0${background:1:6}, ${color1}" | xrdb -merge
  echo "rofi.color-normal: #00000000, ${foreground}, #00000000, ${color2}, ${background}" | xrdb -merge
  echo "rofi.color-active: #00000000, ${foreground}, #00000000, ${color2}, ${background}" | xrdb -merge
  echo "rofi.color-urgent: #00000000, ${color1}, #00000000, ${color1}, $foreground" | xrdb -merge
fi
