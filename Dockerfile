FROM debian:12.6

RUN apt-get update
RUN apt-get install -y make squid supervisor vim apache2-utils

ADD squid.conf /etc/squid/squid.conf

RUN htpasswd -c -b /etc/squid/passwords user1 pass1

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD /usr/sbin/squid -z && /usr/bin/supervisord
