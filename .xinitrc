#!/bin/sh

# launch redshift
redshift &

# remap keys
remaps &

# set default cursor to pointer
xsetroot -cursor_name left_ptr &

# launch picom
picom -b &

# launch dunst
dunst &

xrdb -load ~/.Xresources

exec bspwm
