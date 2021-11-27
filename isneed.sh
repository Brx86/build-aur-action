#!/usr/bin/bash
pkgname=$1
repoVer=$(yay -S --print-format "%v" $pkgname)
aurVer=$(curl -s "https://aur.archlinux.org/rpc/?v=5&type=search&arg=$pkgname"|jq '.results[0]'|jq '.Version')
if [ "\"$repoVer\"" == "$aurVer" ]; then
    echo "$pkgname is up to date"
else
    yay -Sa $1 --noconfirm --nodiffmenu --nocleanmenu
    mv /home/builder/.cache/yay/*/*.pkg.tar.zst ./$1/
fi
