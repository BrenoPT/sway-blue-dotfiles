#!/bin/bash

#ANSI escape codes for promt coloring
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

mkdir -p ~/Pictures/wallpapers

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

sudo pacman -S wofi kitty  --noconfirm
yay -S ttf-jetbrains-mono-nerd librewolf yazi-git pfetch clipman --noconfirm

fc-cache -f -v

cp /etc/sway/config ~/.config/sway/
cp -r ./sway-dotfiles/.config ~/
cp ./sway-dotfiles/.bashrc ~/
cp ./wallpaper.png ~/Pictures/wallpapers/
