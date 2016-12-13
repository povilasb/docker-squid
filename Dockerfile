FROM debian:jessie

RUN apt-get update
RUN apt-get install -y make squid3 supervisor vim

ADD squid.conf /etc/squid3/squid.conf

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD /usr/sbin/squid3 -z && /usr/bin/supervisord
