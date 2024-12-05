#!/bin/sh
sudo pkg install xorg wayland
sudo pkg install seatd xwayland ly \
  alacritty dmenu-wayland waybar foot fuzzel \
  mako thunar thunar-archive-plugin nemo nemo-fileroller picom

sudo sysrc seatd_enable="YES"
sudo sysrc dbus_enable="YES"
sudo sysrc ly_enable="YES"

sudo echo 'proc /proc procfs rw 0 0' >> /etc/fstab
