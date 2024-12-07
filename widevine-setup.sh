#!/bin/sh

cd ~
sudo pkg install chromium

sudo pkg install foreign-cdm
sudo sysrc linux_enable="YES"
sudo service linux start

git clone --depth 1 https://github.com/freebsd/freebsd-ports
cd freebsd-ports/www/linux-widevine-cdm
make
sudo make install
