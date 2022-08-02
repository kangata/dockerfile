FROM php:8.1-cli

COPY ./tzone.ini /usr/local/etc/php/conf.d/

COPY ./docker-entrypoint /usr/local/bin

RUN apt-get update \
    && apt-get install -y --no-install-recommends git tzdata openssl zip unzip libonig-dev \
    && docker-php-ext-install mysqli pdo_mysql sockets

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html

ENTRYPOINT ["docker-entrypoint"]
