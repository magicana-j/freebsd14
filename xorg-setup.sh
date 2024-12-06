#!/bin/sh
sudo pkg install xorg sddm
sudo sysrc dbus_enable="YES"
sudo sysrc sddm_enable="YES"
sudo echo 'proc /proc procfs rw 0 0' >> /etc/fstab
echo 'setxkbmap -layout jp' >> ~/.xinitrc
