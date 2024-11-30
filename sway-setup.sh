#!/bin/sh

sudo pkg install -y sway swaybg swayidle swaylock-effects

mkdir -p ~/.config/sway
cp /usr/local/etc/sway/config ~/.config/sway/
