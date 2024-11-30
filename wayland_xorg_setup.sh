#!/bin/sh
sudo pkg install -y xorg wayland seatd xwayland-devel alacritty dmenu-wayland dmenu waybar foot fuzzel wofi mako thunar thunar-archive-plugin picom

echo 'Ececute-- sudo sysrc seatd_enable="YES"'
echo '  sudo service seatd start'
echo '  sudo sysrc dbus_enable="YES"'
