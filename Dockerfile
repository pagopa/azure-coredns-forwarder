FROM coredns/coredns:1.12.0@sha256:40384aa1f5ea6bfdc77997d243aec73da05f27aed0c5e9d65bfa98933c519d97

COPY ./coredns/Corefile /app/conf/Corefile

EXPOSE 53 53/udp

ENTRYPOINT ["/coredns"]
CMD ["-conf", "/app/conf/Corefile"]
