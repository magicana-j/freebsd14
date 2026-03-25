#!/usr/local/bin/bash

# User configuration
YOUR_USER="your_username"

echo "Starting Intel graphics driver installation..."

# Install Intel DRM drivers and hardware acceleration libraries
# drm-kmod: Kernel modules for Intel/AMD graphics
# libva-intel-driver: VA-API for older Intel GPUs
# intel-media-driver: VA-API for modern Intel GPUs (Gen8+)
pkg install -y xorg drm-kmod

echo "Installing XFCE, Firefox, and Japanese environment..."

# Combined installation of desktop and Japanese environment
pkg install -y xfce xfce4-goodies pulseaudio firefox lightdm lightdm-gtk-greeter \
               ja-font-ipa fcitx5 fcitx5-gtk2 fcitx5-gtk3 fcitx5-gtk4 fcitx5-configtool ja-fcitx5-anthy

echo "Configuring system services and kernel modules..."

# Enable DBus and LightDM
sysrc dbus_enable="YES"
sysrc lightdm_enable="YES"

# Load Intel graphics driver (i915kms) at boot
# Use += to append to existing kld_list if it exists
sysrc kld_list+="i915kms"

# Configure procfs (required for Firefox)
if ! grep -q "/proc" /etc/fstab; then
    echo "proc           /proc       procfs  rw      0       0" >> /etc/fstab
    mount /proc
fi

# Add user to necessary groups for graphics and sound
# video/render: Required for GPU access
pw groupmod video -m $YOUR_USER
#pw groupmod render -m $YOUR_USER
#pw groupmod wheel -m $YOUR_USER

echo "Configuring user desktop environment..."

XINIT_FILE="/home/$YOUR_USER/.xinitrc"

cat <<EOF > $XINIT_FILE
# Environment variables for Japanese input (Fcitx5)
#export LANG=ja_JP.UTF-8
#export LC_ALL=ja_JP.UTF-8
export XMODIFIERS='@im=fcitx'
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx

# Start fcitx5 in background
#fcitx5 -d

# Start XFCE desktop environment
#exec startxfce4
EOF

chown $YOUR_USER:$YOUR_USER $XINIT_FILE

echo "Setup complete. Please reboot your system to apply graphics settings."
