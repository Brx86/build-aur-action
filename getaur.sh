#!/bin/bash
curl https://aur.archlinux.org/packages.gz -s|gzip -d - >packages
sed -i '1d' packages
pkgs=$(cat packages)
mkdir aur
for i in ${pkgs[*]}; do 
    git clone https://aur.archlinux.org/$i aur/$i
done
tar cvf aur.tar.xz aur