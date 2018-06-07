ARG arch=amd64
FROM ${arch}/alpine:latest

WORKDIR /app
VOLUME /app

USER root

RUN apk add --no-cache rsyslog supervisor

ADD config/ /etc

EXPOSE 514/tcp 514/udp

CMD ["/app/run.sh"]
