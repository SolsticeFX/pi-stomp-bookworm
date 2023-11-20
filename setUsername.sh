#!/bin/sh

echo "setting username to $USER for install scripts and services"

find . -type f -exec sed -i "s /home/pistomp /home/$USER g" {} +
find . -type f -exec sed -i "s pistomp:pistomp $USER:$USER g" {} +
find . -type f -exec sed -i "s User=pistomp User=$USER g" {} +
find . -type f -exec sed -i "s Group=pistomp Group=$USER g" {} +

sudo chmod +x setup.sh stopMod.sh startMod.sh

echo "Making install.sh executable, run './setup.sh -p' to start the installation process"


