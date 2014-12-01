FROM maxexcloo/nginx-php

MAINTAINER Flemming Andersen <flemming@flamingcode.com>

# Install composer
RUN wget -qO - "https://getcomposer.org/installer" | php > /dev/null 2>&1
RUN mv composer.phar /usr/local/bin/composer

# and drush
RUN composer -q require drush/drush:6.*
RUN ln -sf /data/vendor/bin/drush /usr/local/bin/drush

RUN drush dl drupal
RUN mv drupal-*/ /data/http

WORKDIR /data/http
