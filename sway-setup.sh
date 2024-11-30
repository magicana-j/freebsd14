#!/bin/sh

sudo pkg install -y sway swaybg swayidle waybar swaylock-effects

if [ ! -d "~/.config/sway" ]; then
  mkdir -p ~/.config/sway/config.d
fi

cp /usr/local/etc/sway/config ~/.config/sway/
