#!/bin/sh
# Lightdm
sudo pkg install lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo sysrc lightdm_enable="YES"

# SDDM
#sudo pkg install sddm
#sudo sysrc sddm_enable="YES"
