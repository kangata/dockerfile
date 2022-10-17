FROM php:8.1-cli-alpine

COPY ./tzone.ini /usr/local/etc/php/conf.d/

RUN apk update add --no-cache git tzdata && docker-php-ext-install sockets

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
