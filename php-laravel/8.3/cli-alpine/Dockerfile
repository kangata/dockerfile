FROM php:8.3-cli-alpine

RUN apk add --no-cache icu-dev libzip-dev libpng-dev linux-headers pcre-dev tzdata unzip zip $PHPIZE_DEPS \
  && pecl install redis

RUN docker-php-ext-install gd intl mysqli pcntl pdo pdo_mysql sockets zip

RUN docker-php-ext-enable redis

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./tzone.ini /usr/local/etc/php/conf.d/tzone.ini

