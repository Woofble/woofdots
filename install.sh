#!/bin/bash

# Update package repositories...
sudo pacman -Sy

# Install required packages...
sudo pacman -S nano vim git unzip less wget curl neofetch htop kitty

# Install yay...
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -r yay

# Install Hyprland...
yay -Syu --devel
yay -S gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info cpio tomlplusplus
git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
make all
sudo make install
cd ..
sudo rm -r Hyprland

# Install Ly...
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
sudo make install installsystemd
systemctl enable ly.service
cd ..
sudo rm -r ly

# Install optional packages...
sudo pacman -S firefox
