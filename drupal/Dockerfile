FROM flemeur/nginx-php

MAINTAINER Flemming Andersen <flemming@flamingcode.com>

# Install drush
RUN composer -q require drush/drush:6.* && ln -sf /var/sites/default/vendor/bin/drush /usr/local/bin/drush

RUN rm -r public/ && drush dl drupal && mv drupal-*/ public/

ADD conf.d/ /var/sites/default/conf.d/
