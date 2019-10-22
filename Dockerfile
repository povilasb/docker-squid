FROM debian:jessie

RUN apt-get update
RUN apt-get install -y make squid3 supervisor vim apache2-utils

ADD squid.conf /etc/squid3/squid.conf

RUN htpasswd -c -b /etc/squid3/passwords user1 pass1

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD /usr/sbin/squid3 -z && /usr/bin/supervisord
