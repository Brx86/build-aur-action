#!/bin/bash
wget https://github.com/Brx86/build-aur-action/releases/download/v1.0/yay-10.2.3-1-x86_64.pkg.tar.zst
pacman -U --noconfirm ./*.pkg.tar.zst
mkdir $1
yay -S $1 --noconfirm
mv ~/.cache/yay/*/*.pkg.tar.zst ./$1/