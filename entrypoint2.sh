#!/bin/bash
set -euo pipefail

cat << EOM >> /etc/pacman.conf
[multilib]
Include = /etc/pacman.d/mirrorlist
[archlinuxcn]
SigLevel = Never
Server = https://mirrors.bfsu.edu.cn/archlinuxcn/x86_64
EOM

pacman -Syu --noconfirm --needed yay mlocate

#pacman --noconfirm -U https://github.com/Brx86/build-aur-action/releases/download/v1.0/yay-10.2.3-1-x86_64.pkg.tar.zst

useradd builder -m

echo "builder ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

sudo -u builder yay -Sa ttf-hymmnos-ar --noconfirm --nodiffmenu --nocleanmenu

updatedb

locate ttf-hymmnos-ar


