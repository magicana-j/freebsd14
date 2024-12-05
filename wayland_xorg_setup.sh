#!/bin/sh
sudo pkg install xorg wayland
sudo pkg install seatd xwayland
sudo sysrc seatd_enable="YES"
sudo sysrc dbus_enable="YES"

sudo echo 'proc /proc procfs rw 0 0' >> /etc/fstab
