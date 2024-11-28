#!/bin/sh
sleep 2
echo Install Wayland.
sleep 2
sudo pkg install -y xorg wayland seatd xwayland alacritty dmenu-wayland dmenu pavucontrol alsa-utils waybar foot wofi mako thunar picom

sleep 2
echo Setting SystemControl.
sleep 2
sudo sysrc kld_list+=i915kms
sudo pw groupmod video -m user
sudo sysrc seatd_enable="YES"
sudo service seatd start
sudo sysrc dbus_enable="YES"
sudo sysctl net.local.stream.recvspace=65536
sudo sysctl net.local.stream.sendspace=65536
