FROM flemeur/debian

LABEL MAINTAINER="Flemming Andersen <flemming@flamingcode.com>"

RUN apt-get update && apt-get install -y --no-install-recommends nginx && apt-get clean

COPY etc/ /etc/

RUN cd /etc/nginx/sites-enabled && rm default && ln -s /etc/nginx/sites-available/www www

RUN mkdir -p /var/www

WORKDIR /var/www

CMD ["/usr/sbin/nginx"]

EXPOSE 80
