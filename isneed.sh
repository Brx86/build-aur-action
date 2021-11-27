#!/usr/bin/bash
pkgname=$1
repoVer=$(yay -S --print-format "%v" $pkgname)
aurVer=$(yay -Sa --print-format "%v" $pkgname)
if [ "$repoVer" == "$aurVer" ]; then
    echo "$pkgname is up to date"
else
    yay -Sa $1 --noconfirm --nodiffmenu --nocleanmenu
    mv /home/builder/.cache/yay/*/*.pkg.tar.zst ./$1/
fi
