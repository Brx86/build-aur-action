FROM archlinux:latest
RUN pacman -Syu base-devel git wget --needed --noconfirm --overwrite '*' && sed -i '/E_ROOT/d' /usr/bin/makepkg
ENTRYPOINT ["/entrypoint.sh"]
