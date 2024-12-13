#!/bin/sh
sudo pkg install -y vim nano neovim htop fastfetch
sudo pkg install -y drm-kmod libva-intel-driver mesa-libs mesa-dri libva-utils gpu-firmware-intel-kmod-kabylake
sudo pkg install -y pulseaudio pavucontrol networkmgr

sudo sysrc kld_list+=i915kms
sudo sysrc kld_list+=linux
sudo sysrc kld_list+=linux64

sudo pw groupmod video -m $USER
#sudo pw groupmod audio -m $USER

sudo sysctl net.local.stream.recvspace=65536
sudo sysctl net.local.stream.sendspace=65536

echo "Making user fonts folder."
echo "=> ~/.local/share/fonts"
mkdir -p ~/.local/share/fonts
