FROM php:8.1-apache

COPY src/ /var/www/html/

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

RUN apt update; \
    apt upgrade -y; \
    echo "Listen 8080" > /etc/apache2/ports.conf;

EXPOSE 8080