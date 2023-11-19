#!/bin/sh

echo "setting username to $USER for install scripts and services"

for f in *; do
    sed -i 's /home/pistomp /home/$USER g' $f
#    sed -i "s/raspberryUsername/$USER/g" $f
done

sudo chmod +x install.sh stopMod.sh startMod.sh uninstall.sh

echo "Making install.sh executable, run ./install.sh to start the installation process"
