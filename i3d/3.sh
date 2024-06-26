#!/bin/bash

# Install curl
sudo apt install -y curl

# Download and execute Rustup installer
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sudo bash -s -- -y --profile complete --default-toolchain nightly

# Set path and source cargo environment variables
echo 'source "$HOME/.cargo/env"' >> ~/.bashrc
source "$HOME/.bashrc"

sudo apt-get update
# Inform user about installation completion
echo "################################################################"
echo "###################    Installation Done  ######################"
echo "################################################################"
