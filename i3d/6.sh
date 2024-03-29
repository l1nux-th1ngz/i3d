#!/bin/bash

# Function to install and configure LightDM
install_lightdm() {
    # Install LightDM and related packages
    sudo apt install -y lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

    # Enable LightDM
    sudo systemctl enable lightdm

      # Inform user about installation completion
    echo "################################################################"
    echo "###################    Installation Done  ######################"
    echo "################################################################"
}

# Function to install and configure SDDM
install_sddm() {
    # Install SDDM without recommended packages
    sudo apt install -y --no-install-recommends sddm

    # Enable SDDM
    sudo systemctl enable sddm

    # Start SDDM
    sudo systemctl start sddm

    # Inform user about installation completion
    echo "################################################################"
    echo "###################    Installation Done  ######################"
    echo "################################################################"
}

# Main script starts here
echo "Select display manager:"
echo "1. Install and configure LightDM"
echo "2. Install and configure SDDM"
read -p "Enter your choice [1/2]: " choice

case $choice in
    1) install_lightdm ;;
    2) install_sddm ;;
    *) echo "Invalid choice. Please enter 1 or 2." ;;
esac
