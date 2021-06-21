#!/bin/bash
mkdir $1
pikaur -S $1 --noconfirm
mv ~/.cache/pikaur/pkg/*.pkg.tar.zst ./$1/
