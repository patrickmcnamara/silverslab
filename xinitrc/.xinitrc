#!/bin/bash

xrdb -merge ~/.Xresources
xmodmap ~/.Xmodmap
~/.wallpaper.py

udiskie --no-notify --quiet &
autocutsel -selection PRIMARY -fork &

exec i3
