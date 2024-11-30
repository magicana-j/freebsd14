#!/bin/sh
sudo pkg install -y xfce xfce4-goodies
sudo cat << EOF >> /etc/fstab
proc /proc procfs rw 0 0
EOF

cat << EOF >> ~/.xinitrc
setxkbmap -layout jp
#exec xfce4-session
EOF
