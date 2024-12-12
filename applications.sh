#!/bin/sh
sleep 2
echo Install Applications.
sleep 2
sudo pkg install -y firefox
sudo pkg install -y simplescreenrecorder \
  handbrake xdg-user-dirs x264 openh264
sudo pkg install -y zip unzip xarchiver \
  automount v4l-utils v4l_compat
sudo pkg install -y vlc obs-studio shotcut shotwell \
  gnome-keyring vscode
