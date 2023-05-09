#!/bin/bash

# assumes git is installed
# after finishing consider removing yay folder and install yay with yay
sudo pacman -Syu ansible base-devel
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd ..

ansible-playbook -t install -K --ask-vault-pass local.yml

packages=(redshift-minimal papirus-folders-catppuccin-git catppuccin-gtk-theme-mocha brave-bin)
echo "Installing extra yay packages: ${packages[@]}"
yay -Syu ${packages[@]}
