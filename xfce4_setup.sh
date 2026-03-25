#!/usr/local/bin/bash

# User configuration
YOUR_USER="your_username"

echo "Starting package installation..."

# Install XFCE, requested packages, and Japanese environment
# ja-font-ipa: Japanese fonts
# fcitx5, ja-fcitx5-anthy: Input method
pkg install -y xfce xfce4-goodies pulseaudio firefox lightdm lightdm-gtk-greeter \
               ja-font-ipa fcitx5 fcitx5-configtool ja-fcitx5-anthy

echo "Updating system configurations..."

# Enable necessary services
sysrc dbus_enable="YES"
sysrc lightdm_enable="YES"

# Configure procfs mount (required for Firefox and certain desktop features)
if ! grep -q "/proc" /etc/fstab; then
    echo "proc           /proc       procfs  rw      0       0" >> /etc/fstab
    mount /proc
fi

# Add user to necessary groups
pw groupmod video -m $YOUR_USER
pw groupmod wheel -m $YOUR_USER

echo "Setting up user environment (including Japanese input settings)..."

# Create/update .xinitrc for the user
XINIT_FILE="/home/$YOUR_USER/.xinitrc"

cat <<EOF > $XINIT_FILE
# Environment variables for Japanese input (Fcitx5)
#export LANG=ja_JP.UTF-8
#export LC_ALL=ja_JP.UTF-8
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx

# Start fcitx5 in background
fcitx5 -d

# Start XFCE desktop environment
#exec startxfce4
EOF

chown $YOUR_USER:$YOUR_USER $XINIT_FILE

echo "Setup complete. Please reboot your system."
