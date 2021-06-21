FROM archlinux:latest
RUN pacman -Syu base-devel git --noconfirm --overwrite '*'
COPY build-with-yay.sh /build-with-yay.sh
ENTRYPOINT ["/build-with-yay.sh"]
