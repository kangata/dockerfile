FROM php:8.2-fpm-alpine

RUN apk add --no-cache icu-dev libzip-dev tzdata unzip zip

RUN docker-php-ext-install intl mysqli pcntl pdo pdo_mysql zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./tzone.ini /usr/local/etc/php/conf.d/tzone.ini

