#!/bin/bash

hdmi_active=$(xrandr | grep ' connected' | grep 'HDMI' | awk '{print $1}')

[[ -z "$hdmi_active" ]] && xrandr --output eDP1 --mode 2560x1600 --rate 60.00 --primary --scale 0.5x0.5 --output HDMI2 --off
[[ "$hdmi_active" ]] && xrandr --output HDMI2 --mode 1920x1080 --rate 120.00 --primary --output eDP1 --mode 2560x1600 --scale 0.5x0.5 --below HDMI2
