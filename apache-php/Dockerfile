FROM flemeur/debian

MAINTAINER Flemming Andersen <flemming@flamingcode.com>

RUN apt-get update && apt-get install -y \
apache2 libapache2-mod-php5 \
php5-curl php5-gd php5-mcrypt php5-mysql php5-pgsql php5-sqlite \
&& apt-get clean

# Enable rewrite
RUN a2enmod rewrite

RUN mkdir -p /var/sites/default/public

WORKDIR /var/sites/default
ENV HOME /var/sites/default

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY etc /etc

COPY run.sh /run.sh

CMD ["/run.sh"]

EXPOSE 80
