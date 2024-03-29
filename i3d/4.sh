#!/bin/bash

# Install Ruby
sudo apt install -y ruby-full

# Add rbenv to PATH and initialize rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

sudo apt-get update
# Inform user about installation completion
echo "################################################################"
echo "###################    Installation Done  ######################"
echo "################################################################"
