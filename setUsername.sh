#!/bin/sh

echo "setting username to $USER for install scripts and services"

find . -type f -exec sed -i 's /home/$USER /home/$USER g' {} +

sudo chmod +x setup.sh stopMod.sh startMod.sh

echo "Making install.sh executable, run ./install.sh to start the installation process"




