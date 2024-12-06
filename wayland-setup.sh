#!/bin/sh
sudo pkg install wayland
sudo pkg install seatd xwayland
sudo sysrc seatd_enable="YES"
