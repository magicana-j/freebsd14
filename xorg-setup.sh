#!/bin/sh
sudo pkg install xorg
sudo sysrc dbus_enable="YES"

sudo cat << EOF >> /etc/fstab
proc /proc procfs rw 0 0
EOF

cat << EOF >> ~/.xinitrc
#!/bin/sh
setxkbmap -layout jp
EOF
