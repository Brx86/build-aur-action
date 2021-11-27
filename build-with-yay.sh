#!/bin/bash
mkdir $1
cat << AYA >> /etc/pacman.conf
[multilib]
Include = /etc/pacman.d/mirrorlist
[archlinuxcn]
SigLevel = Never
Server = https://mirror.xtom.de/archlinuxcn/x86_64
[aya]
SigLevel = Never
Server = https://github.com/Brx86/repo/releases/download/x86_64
AYA
echo 'PACKAGER="Ayatale <ayatale@qq.com>"'>>/etc/makepkg.conf
pacman -Syu --noconfirm --needed yay
useradd builder -m
echo "builder ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
sudo -u builder bash /isneed.sh $1
