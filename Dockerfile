FROM archlinux:latest
RUN pacman -Sy git --noconfirm --overwrite '*'
COPY getaur.sh /getaur.sh
ENTRYPOINT ["/getaur.sh"]
