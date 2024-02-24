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
systemctl enable ly.service

# Install Hyprland...
yay -S hyprland-git

# Install Waybar...
sudo pacman -S waybar

# Install Hyprpaper...
sudo pacman -S hyprpaper

# Install Wofi...
sudo pacman -S wofi

# Install optional packages...
sudo pacman -S firefox discord neofetch nano vim neovim htop unzip less wget curl kitty gtk3 pipewire wireplumber

# Copy configs...
sudo cp -rf .config ~/
sudo cp -rf .wallpapers ~/
