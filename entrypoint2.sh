#!/bin/bash
set -euo pipefail

cat << EOM >> /etc/pacman.conf
[multilib]
Include = /etc/pacman.d/mirrorlist
EOM

pacman -Sy

#pacman -Syu --noconfirm --needed yay mlocate

pacman --noconfirm -U https://mirrors.bfsu.edu.cn/archlinuxcn/x86_64/yay-10.2.2-4-x86_64.pkg.tar.zst

useradd builder -m

echo "builder ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

sudo -u builder yay -Sa ttf-hymmnos-ar --noconfirm --nodiffmenu --nocleanmenu

updatedb

locate ttf-hymmnos-ar


