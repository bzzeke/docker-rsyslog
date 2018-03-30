#!/bin/sh
sed -i "s/xxxx/${LOGDNA_KEY}/g" /etc/rsyslog.conf
exec supervisord -c /etc/supervisord.conf

