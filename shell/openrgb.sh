#! /bin/bash

# Download udev rules file
wget https://openrgb.org/releases/release_0.9/60-openrgb.rules

# Move udev rules file to udev rules directory
sudo mv 60-openrgb.rules /etc/udev/rules.d

# Reload the rules
sudo udevadm control --reload-rules
sudo udevadm trigger
