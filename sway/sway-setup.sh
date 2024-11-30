#!/bin/sh

sudo pkg install -y sway swaybg swayidle waybar swaylock-effects i3status foot mako

if [ ! -d "~/.config/sway" ]; then
  mkdir -p ~/.config/sway/config.d
fi

if [ ! -d "~/.config/alacritty" ]; then
  mkdir -p ~/.config/alacritty
fi

if [ ! -d "~/.config/foot" ]; then
  mkdir -p ~/.config/foot
fi

if [ ! -d "~/.config/waybar" ]; then
  mkdir -p ~/.config/waybar
fi

if [ ! -d "~/.config/i3status" ]; then
  mkdir -p ~/.config/i3status
fi

if [ ! -d "~/.config/mako" ]; then
  mkdir -p ~/.config/mako
fi

cp /usr/local/etc/sway/config ~/.config/sway/
