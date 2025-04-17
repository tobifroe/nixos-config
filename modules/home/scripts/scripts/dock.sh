#!/usr/bin/env bash

hyprctl keyword monitor eDP-1,disable
pkill waybar
hyprctl dispatch exec waybar
