#!/bin/sh
# Lightdm
sudo pkg install lightdm lightdm-gtk-greeter
sudo sysrc lightdm_enable="YES"

# SDDM
#sudo pkg install sddm
#sudo sysrc sddm_enable="YES"
