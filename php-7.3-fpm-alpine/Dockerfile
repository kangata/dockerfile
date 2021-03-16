FROM php:7.3-fpm-alpine

COPY ./tzone.ini /usr/local/etc/php/conf.d/

RUN apk update add --no-cache git tzdata \
    && docker-php-ext-install mbstring tokenizer mysqli pdo_mysql sockets

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer