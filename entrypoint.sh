#!/bin/bash
mkdir $1
yay -S $1 --noconfirm
mv ~/.cache/yay/*/*.pkg.tar.zst ./$1/