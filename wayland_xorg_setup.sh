#!/bin/sh
sudo pkg install -y xorg wayland seatd xwayland-devel alacritty dmenu-wayland dmenu waybar foot fuzzel wofi mako thunar thunar-archive-plugin picom

sleep 2
echo Setting SystemControl.
sleep 2
sudo sysrc seatd_enable="YES"
sudo service seatd start
sudo sysrc dbus_enable="YES"
