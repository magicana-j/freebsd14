#!/bin/sh
sudo pkg install xorg wayland
sudo pkg install seatd xwayland ly \
  alacritty dmenu-wayland waybar foot fuzzel \
  mako thunar thunar-archive-plugin nemo nemo-fileroller picom

echo 'Ececute-- sudo sysrc seatd_enable="YES"'
echo '  sudo sysrc dbus_enable="YES"'
echo '  sudo sysrc ly_enable="YES"
