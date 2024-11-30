#!/bin/sh

sudo pkg install niri waybar i3status swaybg swaylock swayidle mako fuzzel alacritty

if [ ! -d "~/.config/niri" ]; then
  mkdir -p ~/.config/niri
fi

if [ ! -d "~/.config/alacritty" ]; then
  mkdir -p ~/.config/alacritty
fi

if [ ! -d "~/.config/fuzzel" ]; then
  mkdir -p ~/.config/fuzzel
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
