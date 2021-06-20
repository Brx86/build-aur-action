FROM archlinux:latest
RUN pacman -Syu base-devel git python p7zip bash-completion npm yarn asar --noconfirm --overwrite '*' && sed -i '/E_ROOT/d' /usr/bin/makepkg
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
