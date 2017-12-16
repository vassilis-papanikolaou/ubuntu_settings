#!/bin/bash

# Get specific Ubuntu distribution information
source /etc/lsb-release -c

# Add the 'signal' key
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -

# Patch the sources.list file
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt $DISTRIB_CODENAME main" | sudo tee -a /etc/apt/sources.list.d/signal-$DISTRIB_CODENAME.list

# Install signal
sudo apt update && sudo apt install signal-desktop
