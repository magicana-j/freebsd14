#!/bin/sh
sleep 2
echo Install Applications.
sleep 2
sudo pkg install -y firefox simplescreenrecorder \
  handbrake xdg-user-dirs x264 openh264 zip unzip xarchiver \
  automount v4l-utils v4l_compat \
  vlc obs-studio shotcut shotwell
