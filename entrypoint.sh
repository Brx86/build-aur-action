#!/bin/bash
git clone "https://aur.archlinux.org/$1.git"
cd "$1"
sed -i 's|community-store-packages.deepin.com|aya1.xyz/https://community-store-packages.deepin.com|g' PKGBUILD
makepkg -sf --noconfirm --skippgpcheck --nodeps
