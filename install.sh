#!/bin/bash

# sudo pacman -Syu ansible git base-devel
# git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
# git clone git@github.com/antpeixe/ansible && cd ansible

ansible-playbook -t install --ask-vault-pass local.yml

