#!/bin/bash

# Ensure script is run as root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 
    exit 1
fi

# Install i3
apt-get update
apt-get install -y i3

# Install Thunar (File Manager)
apt-get install -y thunar

# Install Terminals (Terminator and Kitty)
apt-get install -y terminator kitty

# Install xdg-user-dirs-gtk
apt-get install -y xdg-user-dirs-gtk

# Update user directories
xdg-user-dirs-gtk-update

# Set up XSessions and i3.desktop
if [[ ! -d /usr/share/xsessions ]]; then
    mkdir /usr/share/xsessions
fi

cat > /usr/share/xsessions/i3.desktop << "EOF"
[Desktop Entry]
Encoding=UTF-8
Name=i3
Comment=Dynamic window manager
Exec=i3
Icon=i3
Type=XSession
EOF

# Change permissions
chmod +x 2.sh
sudo ./2.sh

echo "################################################################"
echo "###################    Installation Done  ######################"
echo "################################################################"
