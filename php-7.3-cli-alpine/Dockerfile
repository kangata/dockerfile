FROM php:7.3-cli-alpine

WORKDIR /usr/src/app

COPY ./docker-entrypoint.sh /usr/local/bin/

RUN apk update add --no-cache git tzdata \
    && docker-php-ext-install mbstring tokenizer mysqli pdo_mysql sockets

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ENV APP_ROOT .

ENTRYPOINT docker-entrypoint.sh

