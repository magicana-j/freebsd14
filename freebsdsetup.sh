#!/bin/sh

cp /etc/resolv.conf /etc/resolv.conf.bak
echo 'nameserver 1.1.1.1' | tee /etc/resolv.conf

sysrc create_args_wlan0="country JP"

pkg update
pkg install -y sudo vim neovim htop btop fastfetch
pkg install -y zsh ohmyzsh
pkg install -y xorg drm-kmod
pkg install -y pulseaudio pavucontrol networkmgr

echo 'Enabling i915kms...'
sysrc kld_list+=i915kms
wait 1

echo 'Enabling procfs...'
echo 'proc /proc procfs rw 0 0' | tee -a /etc/fstab
wait 1

echo 'Enabling dbus...'
sysrc dbus_enable=YES
wait 1

pkg install -y mate lightdm lightdm-gtk-greeter xdg-user-dirs-gtk
echo 'Enabling lightdm...'
sysrc lightdm_enable=YES
wait 1

pkg install -y x264 openh264 ffmpeg firefox shotwell shotcut gimp chromium geany zip unzip exfat-utils fusefs-exfat fusefs-ntfs xarchiver
pkg install -y noto-emoji fcitx5 ja-fcitx5-anthy fcitx5-configtool

echo 'Execute visudo to enable %wheel to sudo'
echo 'Uncomment %wheel row.'
