#!/bin/bash

# Update package repositories...
sudo pacman -Sy

# Install Git...
sudo pacman -S git

# Install Curl...
sudo pacman -S curl

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

# Install Nerd Font...
sudo pacman -S nerd-fonts

# Install Wofi...
sudo pacman -S wofi

# Install Cmus...
sudo pacman -S cmus

# Install Cava...
yay -S cava

# Install optional packages...
sudo pacman -S firefox discord neofetch nano vim neovim htop unzip less wget kitty pipewire wireplumber dolphin grim wl-clipboard xdg-desktop-portal-hyprland xdg-desktop-portal-gtk

# Copy configs...
sudo cp -rf .config ~/
