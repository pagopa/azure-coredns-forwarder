FROM coredns/coredns:1.11.1@sha256:2169b3b96af988cf69d7dd69efbcc59433eb027320eb185c6110e0850b997870

COPY ./core-dns /app/conf/Corefile

WORKDIR /app

# -> exposed port: 53

CMD ["/coredns", "-conf", "/app/conf/Corefile"]
