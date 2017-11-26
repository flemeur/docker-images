FROM flemeur/nginx

LABEL MAINTAINER="Flemming Andersen <flemming@flamingcode.com>"

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
	supervisor \
	php-fpm \
	php-cli \
	php-curl \
	php-gd \
	php-mcrypt \
	php-mysql \
	php-pgsql && \
	apt-get clean

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY run.sh /run.sh

COPY etc /etc

RUN rm /etc/nginx/sites-*/www && cd /etc/nginx/sites-enabled && ln -s /etc/nginx/sites-available/default default

RUN mkdir -p /var/sites/default/conf.d /var/sites/default/public

WORKDIR /var/sites/default
ENV HOME /var/sites/default

CMD ["/run.sh"]
