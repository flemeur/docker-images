FROM debian:stable

MAINTAINER Flemming Andersen <flemming@flamingcode.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends nginx && apt-get clean

COPY etc/nginx/nginx.conf /etc/nginx/

COPY etc/nginx/sites-available/www /etc/nginx/sites-available/

RUN cd /etc/nginx/sites-enabled && rm default && ln -s /etc/nginx/sites-available/www www

RUN mkdir -p /var/www

CMD ["/usr/sbin/nginx"]

EXPOSE 80
