#!/bin/sh

sudo pkg xdg-desktop-portal-gtk xfce4-terminal \
  fuzzel foot alacritty nwg-drawer nwg-launchers \
  waybar swaybg swaylock waylock swayidle \
  wf-recorder wl-clipboard wob wlogout xbrightness \
  gvfs fusefs-ntfs \
  xarchiver nemo mako volumeicon kanshi \
  sway cinnamon lightdm lightdm-gtk-greeter

sudo sysrc lightdm_enable="YES"
