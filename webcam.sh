#!/bin/sh
sleep 2
echo Install WebCam Applications.
sleep 2
sudo pkg install -y webcamd
sudo sysrc webcamd_enable="YES"
sudo pw groupmod webcamd -m $USER
