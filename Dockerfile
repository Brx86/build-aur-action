FROM archlinux:latest
RUN pacman -Syu base-devel git --needed --noconfirm --overwrite '*' && sed -i '/E_ROOT/d' /usr/bin/makepkg
RUN patched_glibc=glibc-linux4-2.33-5-x86_64.pkg.tar.zst && \
    curl -LO "https://repo.archlinuxcn.org/x86_64/$patched_glibc" && \
    bsdtar -C / -xvf "$patched_glibc"
COPY entrypoint2.sh /entrypoint2.sh
ENTRYPOINT ["/entrypoint2.sh"]
