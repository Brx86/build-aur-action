FROM archlinux:latest
RUN pacman -Syu base-devel git --needed --noconfirm --overwrite '*' && sed -i '/E_ROOT/d' /usr/bin/makepkg
RUN pacman -U --noconfirm https://github.com/Brx86/build-aur-action/releases/download/v1.0/pikaur-1.7-1-any.pkg.tar.zst
ENTRYPOINT ["/entrypoint.sh"]
