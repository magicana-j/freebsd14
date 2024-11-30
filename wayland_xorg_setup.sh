#!/bin/sh
sudo pkg install xorg wayland
sudo pkg install seatd xwayland \
  alacritty dmenu-wayland waybar foot fuzzel \
  mako thunar thunar-archive-plugin picom

if [ ! -d "~/.config/alacritty" ]; then
  mkdir -p ~/.config/alacritty
fi

if [ ! -d "~/.config/fuzzel" ]; then
  mkdir -p ~/.config/fuzzel
fi

if [ ! -d "~/.config/foot" ]; then
  mkdir -p ~/.config/foot
fi

if [ ! -d "~/.config/waybar" ]; then
  mkdir -p ~/.config/waybar
fi

if [ ! -d "~/.config/mako" ]; then
  mkdir -p ~/.config/mako
fi

echo 'Ececute-- sudo sysrc seatd_enable="YES"'
echo '  sudo sysrc dbus_enable="YES"'
