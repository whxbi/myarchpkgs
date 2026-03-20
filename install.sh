#!/bin/bash

set -e

echo "[*] Installing official packages..."
sudo pacman -S --needed - < pkglist.txt

# AUR helper (yay example)
if ! command -v yay &> /dev/null; then
    echo "[*] Installing yay..."
    sudo pacman -S --needed base-devel git
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si 
    cd ..
fi

echo "[*] Installing AUR packages..."
yay -S --needed - < aurlist.txt

echo "[*] Done."
