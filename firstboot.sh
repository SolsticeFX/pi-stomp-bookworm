#!/bin/bash -e
set -x
echo "firstboot..."
sudo apt install -y git
sudo apt install gldriver-test

git clone https://github.com/SolsticeFX/pi-stomp-bookworm.git pi-stomp
cd pi-stomp
./setUsername.sh 
./setup.sh -p


