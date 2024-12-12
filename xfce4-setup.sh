#!/bin/sh
sudo pkg install -y xfce xfce4-goodies xfce4-mixer xfce4-volumed
sudo pkg install -y lightdm lightdm-gtk-greeter
sudo sysrc lightdm_enable="YES"
