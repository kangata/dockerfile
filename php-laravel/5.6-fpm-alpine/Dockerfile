FROM php:5.6-fpm-alpine

RUN apk add --no-cache libzip-dev tzdata unzip zip

RUN docker-php-ext-install mysqli pdo pdo_mysql zip sockets

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./tzone.ini /usr/local/etc/php/conf.d/tzone.ini

