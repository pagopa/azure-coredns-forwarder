FROM coredns/coredns:1.11.1@sha256:2169b3b96af988cf69d7dd69efbcc59433eb027320eb185c6110e0850b997870

COPY ./coredns/Corefile /app/conf/Corefile

EXPOSE 53 53/udp

ENTRYPOINT ["/coredns"]
CMD ["-conf", "/app/conf/Corefile"]
