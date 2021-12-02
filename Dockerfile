FROM archlinux:latest
RUN pacman -Syu base-devel git python nano openssh wget --noconfirm --needed
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
