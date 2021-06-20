#!/bin/bash
yay -Ga $1
cd "$1"
sed -i 's|//packages.deepin.com|//aya1.xyz/https://packages.deepin.com|g' PKGBUILD
sed -i 's|//community-store-packages.deepin.com|//aya1.xyz/https://community-store-packages.deepin.com|g' PKGBUILD
pacman -S --needed $(grep  "makedepends = " .SRCINFO|sed 's|makedepends = ||g')
makepkg -sf --noconfirm --skippgpcheck --nodeps
