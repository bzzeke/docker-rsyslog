ARG arch=amd64
FROM ${arch}/alpine:latest

WORKDIR /app
VOLUME /app

USER root

RUN apk add --no-cache rsyslog supervisor

COPY config/rsyslog.conf /etc/rsyslog.conf
COPY config/supervisord.conf /etc/supervisord.conf

EXPOSE 514/tcp 514/udp

CMD ["/app/run.sh"]
