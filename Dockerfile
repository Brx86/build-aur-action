FROM archlinux:latest
RUN pacman -Syu base-devel git --needed --noconfirm --overwrite '*' && sed -i '/E_ROOT/d' /usr/bin/makepkg
RUN pacman -U --noconfirm https://github.com/Brx86/build-aur-action/releases/download/v1.0/yay-10.2.3-1-x86_64.pkg.tar.zst
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
