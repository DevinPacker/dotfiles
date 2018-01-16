#!/usr/bin/env sh
if command -V bspc > /dev/null; then
  . "$HOME/.cache/wal/colors.sh"
  bspc config normal_border_color $background
  bspc config focused_border_color $foreground
  bspc config active_border_color $color8
  bspc config presel_feedback_color $foreground
fi
