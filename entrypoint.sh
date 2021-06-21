#!/bin/bash
git clone https://github.com/actionless/pikaur

mkdir $1
python3 ./pikaur/pikaur.py -S  -S $1 --noconfirm
mv ~/.cache/pikaur/pkg/*.pkg.tar.zst ./$1/
