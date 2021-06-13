FROM php:7.3-cli-alpine

COPY ./tzone.ini /usr/local/etc/php/conf.d/

COPY ./docker-entrypoint /usr/local/bin

RUN apk update add --no-cache git tzdata \
    && docker-php-ext-install mbstring tokenizer mysqli pdo_mysql sockets

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html

ENTRYPOINT ["docker-entrypoint"]