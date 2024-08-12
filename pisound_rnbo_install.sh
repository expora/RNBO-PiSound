#!/bin/bash
echo "Installing all dependencies for Pisound examples.."

sudo apt-get update -y
sudo apt-get install -y liblo-dev
sudo apt-get install -y liblo-tools

# add chmod +x to all files
chmod +x ./rnbo_btn_scripts/*.sh

# copy the conf file into the correct place
cp ./rnbo_btn_scripts/*.sh /usr/local/pisound/scripts/pisound-btn/

# copy the conf file into the correct place, backing up the original one
cp /etc/pisound.conf /etc/pisound.conf.orig
cp ./rnbo_btn_scripts/pisound.conf /etc/pisound.conf

echo "Done! Continue the tutorial to test and run the examples. Happy patching :)"