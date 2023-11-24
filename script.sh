#!/bin/bash

# Download xmrig-6.21.0-focal-x64.tar.gz
wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-focal-x64.tar.gz

# Unzip the downloaded file
tar -xf xmrig-6.21.0-focal-x64.tar.gz

# Change directory to the extracted folder
cd xmrig-6.21.0

# Download randomx_boost.sh and enable_1gb_pages.sh scripts
wget https://raw.githubusercontent.com/xmrig/xmrig/dev/scripts/randomx_boost.sh
wget https://raw.githubusercontent.com/xmrig/xmrig/dev/scripts/enable_1gb_pages.sh

# Make the scripts executable
chmod +x randomx_boost.sh enable_1gb_pages.sh

# Execute the scripts with sudo privileges
sudo bash randomx_boost.sh
sudo bash enable_1gb_pages.sh
