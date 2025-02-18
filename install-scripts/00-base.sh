#!/usr/bin/bash

pkgs=(
    vim
    neovim
    htop
    fastfetch
    xorg
    networkmgr
    pulseaudio
    pavucontrol
    fluxbox
    openbox
    obconf
    tint2
    lightdm
    lightdm-gtk-greeter
    lightdm-gtk-greeter-settings
    drm-kmod
    xf86-video-vesa
    virtualbox-ose-additions
    noto
    noto-extra
    noto-emoji
    noto-jp
)

set -e

# Create Directory for Install Logs
if [ ! -d Install-Logs ]; then
    mkdir Install-Logs
fi

install_package() {
    # Check if package is already installed
    if pacman -Q "$1" &>/dev/null ; then
        echo -e "$1 is already installed. Skipping..."
    else
        # Run pacman and redirect all output to a log file
        (
            stdbuf -oL sudo pkg install -y "$1" 2>&1
        ) >> "$LOG" 2>&1 &
        
        # Double check if package is installed
        if pacman -Q "$1" &>/dev/null ; then
            echo -e "$1 has been successfully installed!"
        else
            echo -e "\n$1 failed to install. Please check the $LOG. You may need to install manually."
        fi
    fi
}

# Function for removing packages
uninstall_package() {
    local pkg="$1"

    # Checking if package is installed
    if pacman -Qi "$pkg" &>/dev/null; then
        echo -e "Removing $pkg ..."
        sudo pacman -R --noconfirm "$pkg" 2>&1 | tee -a "$LOG" | grep -v "error: target not found"

        if ! pacman -Qi "$pkg" &>/dev/null; then
            echo -e "$pkg removed."
        else
            echo -e "$pkg Removal failed. No actions required."
            return 1
        fi
    else
        echo -e "$pkg not installed, skipping."
    fi
    
    return 0
}

# Set the name of the log file to include the current date and time
LOG="Install-Logs/install-$(date +%d_%H%M%S).log"

# Install
printf "Installing Packages...\n"
for pkg in "${pkgs[@]}"; do
    install_package "$pkg" "$LOG"
done

sysrc dbus_enable="YES"
sysrc kld_list="i915kms amdgpu radeonkms vboxvideo"
sysrc lightdm_enable="YES"
fc-cache -fv

echo '*** Run the following command.
echo 'pw groupmod video -m USER
echo '***'

printf "\n%.0s" {1..2}
