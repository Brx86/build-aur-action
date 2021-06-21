#!/bin/bash
wget https://mirrors.bfsu.edu.cn/archlinuxcn/x86_64/pikaur-1.6.17-1-any.pkg.tar.zst
pacman -U ./*.pkg.tar.zst
mkdir $1
pikaur -S $1 --noconfirm
mv ~/.cache/pikaur/pkg/*.pkg.tar.zst ./$1/
