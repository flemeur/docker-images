FROM flemeur/debian

LABEL MAINTAINER="Flemming Andersen <flemming@flamingcode.com>"

RUN apt-get update && apt-get install -y \
	apache2 \
	libapache2-mod-php \
	php \
	php-curl \
	php-gd \
	php-mcrypt \
	php-mysql \
	php-intl && \
	apt-get clean

# Enable rewrite
RUN a2enmod rewrite

RUN mkdir -p /var/sites/default/public

WORKDIR /var/sites/default
ENV HOME /var/sites/default

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN rm /etc/apache2/sites-available/* && rm /etc/apache2/sites-enabled/*

COPY etc /etc

RUN a2ensite default

COPY run.sh /run.sh

CMD ["/run.sh"]

EXPOSE 80
