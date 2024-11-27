#!/bin/sh

sudo pkg install -y drm-kmod libva-intel-driver libva-utils openh264
sudo pkg install -y xorg-fonts noto-basic noto-jp noto-emoji noto-extra fcitx5 fcitx5-configtool ja-fcitx5-anthy
sudo pkg install -y firefox

sudo pkg install -y wayland seatd xwayland sway swayidle swaylock-effects waybar foot wofi mako thunar xarchiver pavucontrol alsa-utils networkmgr grim slurp swappy picom

sudo sysrc seatd_enable="YES"
sudo sysrc kld_list+=i915kms
" sudo pw groupmod video -m USERNAME
sudo sysctl net.local.stream.recvspace=65536
sudo sysctl net.local.stream.sendspace=65536
