FROM splattael/phpmyadmin

RUN rm /etc/apache2/conf.d/phpmyadmin.conf

COPY httpd.conf /etc/apache2/
COPY config.inc.php $PHPMYADMIN_DIR
