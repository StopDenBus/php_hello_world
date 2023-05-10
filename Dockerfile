FROM php:8.1-apache

COPY src/ /var/www/html/

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

RUN sed -ri -e 's#Listen 80#Listen 8080#g' ports.conf /etc/apache2/ports.conf; \
    sed -ri -e 's#Listen 443#Listen 8443#g' ports.conf /etc/apache2/ports.conf

EXPOSE 8080