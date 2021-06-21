FROM archlinux:latest
RUN pacman -Syu base-devel git --needed --noconfirm --overwrite '*' && sed -i '/E_ROOT/d' /usr/bin/makepkg
RUN pacman -U --noconfirm https://mirrors.bfsu.edu.cn/archlinuxcn/x86_64/pikaur-1.6.17-1-any.pkg.tar.zst
ENTRYPOINT ["/entrypoint.sh"]
