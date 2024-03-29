#!/bin/bash

# Update package lists
sudo apt-get update

# Install i3
sudo apt-get install -y i3

# Install Thunar (File Manager)
sudo apt-get install -y thunar

# Install Terminals (Terminator and Kitty)
sudo apt-get install -y terminator kitty

# Install xdg-user-dirs-gtk
sudo apt-get install -y xdg-user-dirs-gtk

# Update user directories
xdg-user-dirs-gtk-update

# Set up XSessions and i3.desktop
if [[ ! -d /usr/share/xsessions ]]; then
    sudo mkdir /usr/share/xsessions
fi

cat > ./i3.desktop << "EOF"
[Desktop Entry]
Encoding=UTF-8
Name=i3
Comment=Dynamic window manager
Exec=i3
Icon=i3
Type=XSession
EOF

sudo mv ./i3.desktop /usr/share/xsessions/

sudo apt-get update

# Inform user about installation completion
echo "################################################################"
echo "###################    Installation Done  ######################"
echo "################################################################"
