FROM php:5.6-fpm-alpine

COPY ./tzone.ini /usr/local/etc/php/conf.d/

WORKDIR /usr/src/app

ENV APP_ROOT=/usr/src/app

RUN apk update \
    && apk add --no-cache git tzdata

RUN docker-php-ext-install pdo pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

