#!/bin/bash

# Update package repositories...
sudo pacman -Sy

# Install required packages...
sudo pacman -S package1 package2 package3

# Install Hyprland...
git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
make all && sudo make install
