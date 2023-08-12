#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
#polybar top -c ~/.config/polybar/config.ini &
polybar -c ~/.config/polybar/config.ini main 2>&1 | tee -a /tmp/polybar.log & disown