#!/bin/bash
apt-get install screen
sleep 15
screen -S cpu
sleep 15
# Download xmrig-6.21.0-focal-x64.tar.gz
wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-focal-x64.tar.gz
sleep 15
# Unzip the downloaded file
tar -xf xmrig-6.21.0-focal-x64.tar.gz
sleep 15
# Change directory to the extracted folder
cd xmrig-6.21.0
sleep 15
# Download randomx_boost.sh and enable_1gb_pages.sh scripts
wget https://raw.githubusercontent.com/xmrig/xmrig/dev/scripts/randomx_boost.sh
sleep 13
wget https://raw.githubusercontent.com/xmrig/xmrig/dev/scripts/enable_1gb_pages.sh
sleep 13
# Make the scripts executable
chmod +x randomx_boost.sh enable_1gb_pages.sh
sleep 13
# Execute the scripts with sudo privileges
bash randomx_boost.sh
sleep 13
bash enable_1gb_pages.sh
sleep 13
