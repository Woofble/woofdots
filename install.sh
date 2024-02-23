#!/bin/bash

# Update package repositories...
sudo pacman -Sy

# Install required packages...
sudo pacman -S git

# Install yay...
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -r yay

# Install Ly...
sudo pacman -S ly

# Install Hyprland...
yay -S hyprland-git

# Install optional packages...
sudo pacman -S firefox neofetch nano vim htop unzip less wget curl kitty gtk3 pipewire wireplumber
