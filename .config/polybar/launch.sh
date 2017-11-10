#!/usr/bin/env sh

# Terminate existing instances of polybar
killall -q polybar

# Wait until processes have shut down fully
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar top &

