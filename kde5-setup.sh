#!/bin/sh
sudo pkg install -y kde5
sudo pkg install -y sddm
sudo sysrc sddm_enable="YES"
