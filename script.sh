#!/bin/bash
apt-get install screen
sleep 5
screen -S cpu
sleep 5
# Download xmrig-6.21.0-focal-x64.tar.gz
wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-focal-x64.tar.gz
sleep 5
# Unzip the downloaded file
tar -xf xmrig-6.21.0-focal-x64.tar.gz
sleep 5
# Change directory to the extracted folder
cd xmrig-6.21.0
sleep 5
# Download randomx_boost.sh and enable_1gb_pages.sh scripts
wget https://raw.githubusercontent.com/xmrig/xmrig/dev/scripts/randomx_boost.sh
sleep 3
wget https://raw.githubusercontent.com/xmrig/xmrig/dev/scripts/enable_1gb_pages.sh
sleep 3
# Make the scripts executable
chmod +x randomx_boost.sh enable_1gb_pages.sh
sleep 3
# Execute the scripts with sudo privileges
bash randomx_boost.sh
sleep 3
bash enable_1gb_pages.sh
sleep 3
