#!/bin/bash

# Inform user about Firefox installation
echo "This will install the non-ESR version of Firefox."

# Create directory with appropriate permissions
sudo install -d -m 0755 /etc/apt/keyrings

# Import repository signing key
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null

# Verify fingerprint
gpg --verify /etc/apt/keyrings/packages.mozilla.org.asc

# Add repository
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null

# Configure package pinning
echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla > /dev/null

# Update package lists and install Firefox
sudo apt-get update && sudo apt-get install -y firefox

# Change permissions
if [ -f "3.sh" ]; then
    chmod +x 3.sh
    sudo ./3.sh
fi

# Inform user about installation completion
echo "################################################################"
echo "###################    Installation Done  ######################"
echo "################################################################"
