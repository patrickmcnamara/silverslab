#!/bin/sh

xmodmap ~/.Xmodmap
xrdb -merge ~/.Xresources
xsetroot -grey

udiskie --no-notify --quiet &
autocutsel -selection PRIMARY -fork &
autocutsel -selection CLIPBOARD -fork &

exec i3
