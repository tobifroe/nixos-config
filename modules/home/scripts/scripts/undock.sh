#!/usr/bin/env bash

hyprctl keyword monitor eDP-1
pkill waybar
hyprctl dispatch exec waybar

