#!/bin/bash
set -euo pipefail



pacman -Syu --noconfirm --needed python p7zip bash-completion npm yarn asar
git clone "https://aur.archlinux.org/$1.git"
cd "$1"
sed 's|packages.deepin.com|aya1.xyz/https://packages.deepin.com|g' PKGBUILD
makepkg -sf --noconfirm --skippgpcheck --nodeps
