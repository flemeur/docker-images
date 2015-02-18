FROM flemeur/nginx

MAINTAINER Flemming Andersen <flemming@flamingcode.com>

RUN apt-get update && apt-get install -y --no-install-recommends \
supervisor \
libgd2-xpm \
php5-fpm php5-cli php5-curl php5-gd php5-mcrypt php5-mysql php5-pgsql php5-sqlite \
&& apt-get clean

COPY etc /etc

RUN rm /etc/nginx/sites-*/www && cd /etc/nginx/sites-enabled && ln -s /etc/nginx/sites-available/default default

RUN mkdir -p /var/sites/default/conf.d /var/sites/default/public

WORKDIR /var/sites/default
ENV HOME /var/sites/default

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

CMD ["/usr/bin/supervisord"]
