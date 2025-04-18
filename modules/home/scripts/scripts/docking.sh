#!/usr/bin/env bash

dock () {
  hyprctl keyword monitor eDP-1,disable
  pkill waybar
  hyprctl dispatch exec waybar
  pkill swaync
  hyprctl dispatch exec swaync
}

undock() {
  hyprctl keyword monitor eDP-1
  pkill waybar
  hyprctl dispatch exec waybar
  pkill swaync
  hyprctl dispatch exec swaync
}

handle() {
  case $1 in
    monitoradded*) dock ;;
  esac
}

socat -U - UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do handle "$line"; done
