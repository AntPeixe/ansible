#!/bin/bash

sudo pacman -Syu ansible git base-devel
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
git clone git@github.com/antpeixe/ansible && cd ansible

ansible-playbook -t install -K --ask-vault-pass local.yml

packages=("redshift-minimal" "papirus-folders-catppuccin-git")
echo "Installing extra yay packages: $packages"
yay -Syu $packages
