FROM archlinux:latest
RUN pacman -Syu base-devel git --needed --noconfirm --overwrite '*'
COPY build-with-yay.sh /build-with-yay.sh
COPY isneed.sh /isneed.sh
ENTRYPOINT ["/build-with-yay.sh"]
