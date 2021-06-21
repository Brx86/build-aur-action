#!/bin/bash
curl https://aur.archlinux.org/packages.gz -s|gzip -d - >packages
sed -i '1d' packages
sum=$(cat packages|wc -l )
num=1
pkgs=$(cat packages)
mkdir aur
for i in ${pkgs[*]}; do 
    echo $num/$sum
    git clone https://aur.archlinux.org/$i aur/$i
    num=$(($num+1))
done
tar cvf aur.tar.xz aur