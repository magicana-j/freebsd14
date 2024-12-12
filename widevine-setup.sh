#!/bin/sh

cd ~
sudo pkg install chromium

sudo pkg install foreign-cdm
sudo sysrc linux_enable="YES"
sudo service linux start

cd /usr/ports/www/linux-widevine-cdm/
sudo make && sudo make install

