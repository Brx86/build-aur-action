#!/bin/bash
mkdir $1
cat << AYA >> /etc/pacman.conf
[multilib]
Include = /etc/pacman.d/mirrorlist
[archlinuxcn]
SigLevel = Never
Server = https://mirror.xtom.com/archlinuxcn/x86_64
AYA
pacman -Syu --noconfirm --needed yay
useradd builder -m
echo "builder ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
sudo -u builder yay -Sa $1 --noconfirm --nodiffmenu --nocleanmenu --makepkg -sf
mv /home/builder/.cache/yay/*/*.pkg.tar.zst ./$1/
