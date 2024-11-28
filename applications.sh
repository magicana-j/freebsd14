#!/bin/sh
sleep 2
echo Install Applications.
sleep 2
sudo pkg install -y firefox cava simplescreenrecorder handbrake libva-intel-driver libva-utils xdg-user-dirs openh264 zip unzip xarchiver neofetch fastfetch networkmgr automount v4l-utils v4l_compat

sleep 2
echo Install WebCam Applications.
sleep 2
sudo pkg install -y webcamd
sudo sysrc webcamd_enable="YES"
sudo pw groupmod webcamd -m user
