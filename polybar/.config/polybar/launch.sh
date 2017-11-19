#!/usr/bin/env bash

# Configure computer-specific environment variables
# Sourced from file in the polybar directory whose name
# is the machine's hostname (see examples)
source "$(dirname $0)/$(hostname -f).sh"

# Terminate existing instances of polybar
killall -q polybar

# Wait until processes have shut down fully
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Display on each monitor
monitors=($(xrandr -q | grep " connected" | cut -d ' ' -f 1))
for monitor in ${monitors[@]}; do
  MONITOR=$monitor polybar top -r &
  echo -e "\e[1m\e[32m[DONE]\e[39m\e[0m Polybar lauched on $monitor..."
done

