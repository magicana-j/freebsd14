#!/usr/bin/bash

pkgs=(
    alacritty
    kitty
    thunar
    thunar-archive-plugin
    ffmpeg
    openh264
    vlc
    firefox
    go
    vim
    neovim
    htop
    fastfetch
    wget
    curl
    zip
    unzip
    xarchiver
    bash-completion
    geany
    tmux
)

set -e

# Create Directory for Install Logs
if [ ! -d Install-Logs ]; then
    mkdir Install-Logs
fi

install_package() {
    # Check if package is already installed
    if pkg info -l "$1" &>/dev/null ; then
        echo -e "$1 is already installed. Skipping..."
    else
        # Run pkg install and redirect all output to a log file
        (
            stdbuf -oL sudo pkg install -y "$1" 2>&1
        ) >> "$LOG" 2>&1 &
        
        # Double check if package is installed
        if pkg info -l "$1" &>/dev/null ; then
            echo -e "$1 has been successfully installed!"
        else
            echo -e "\n$1 failed to install. Please check the $LOG. You may need to install manually."
        fi
    fi
}

# Set the name of the log file to include the current date and time
LOG="Install-Logs/install-$(date +%d_%H%M%S).log"

# Install
printf "Installing Packages...\n"
for pkg in "${pkgs[@]}"; do
    install_package "$pkg" "$LOG"
done

printf "\n%.0s" {1..2}
