#!/bin/bash

xrdb -merge ~/.Xresources
xmodmap ~/.Xmodmap
~/.wallpaper.py

udiskie --no-notify --quiet &
autocutsel -selection PRIMARY -fork &
autocutsel -selection CLIPBOARD -fork &

exec i3
