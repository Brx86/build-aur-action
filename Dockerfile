FROM archlinux:latest
RUN pacman -Syu base-devel git --needed --noconfirm --overwrite '*' && sed -i '/E_ROOT/d' /usr/bin/makepkg
COPY entrypoint2.sh /entrypoint2.sh
ENTRYPOINT ["/entrypoint2.sh"]
