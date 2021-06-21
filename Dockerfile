FROM archlinux:latest
COPY getaur.sh /getaur.sh
ENTRYPOINT ["/getaur.sh"]
