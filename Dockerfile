FROM archlinux:latest
RUN pacman -Syu base-devel git python p7zip imagemagick npm yarn asar cmake python-setuptools gendesk qt5-tools clang make patch --needed --noconfirm --overwrite '*' && sed -i '/E_ROOT/d' /usr/bin/makepkg
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
