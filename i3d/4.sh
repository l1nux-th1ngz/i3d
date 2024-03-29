#!/bin/bash

# Install Ruby
sudo apt install -y ruby-full

# Add rbenv to PATH and initialize rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

# Change permissions and execute 5.sh if it exists
if [ -f "5.sh" ]; then
    # Check if the script is not executable
    if ! [ -x "5.sh" ]; then
        # Change permissions to make the script executable
        chmod +x 5.sh
    fi
    
    # Execute the script
    sudo ./5.sh
else
    echo "Script '5.sh' not found. Skipping execution."
fi

# Inform user about installation completion
echo "################################################################"
echo "###################    Installation Done  ######################"
echo "################################################################"
