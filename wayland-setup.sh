#!/bin/sh
sleep 2
echo Install Wayland.
sleep 2
sudo pkg install -y wayland seatd xwayland alacritty dmenu-wayland dmenu pavucontrol alsa-utils waybar foot wofi mako thunar
sleep 2
echo Install Fonts and IME.
sleep 2
sudo pkg install -y xorg-fonts noto-basic noto-jp noto-emoji noto-extra fcitx5 fcitx5-configtool ja-fcitx5-anthy
sleep 2
echo Install Applications.
sleep 2
sudo pkg install -y cava simplescreenrecorder handbrake libva-intel-driver libva-utils xdg-user-dirs openh264 zip unzip neofetch fastfetch networkmgr automount v4l-utils v4l_compat

sleep 2
echo Install WebCam Applications.
sleep 2
sudo pkg install -y webcamd
sudo sysrc webcamd_enable="YES"
sudo pw groupmod webcamd -m user

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
