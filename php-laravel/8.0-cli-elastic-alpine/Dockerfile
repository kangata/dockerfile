FROM php:8.0-cli-alpine

RUN apk update && apk add --no-cache libzip-dev tzdata unzip zip

RUN docker-php-ext-install mysqli pdo pdo_mysql zip sockets

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN curl -fsSL -O https://github.com/elastic/apm-agent-php/releases/download/v1.9.1/apm-agent-php_1.9.1_all.apk \
  && apk add --no-cache --allow-untrusted ./apm-agent-php_1.9.1_all.apk \
  && rm ./apm-agent-php_1.9.1_all.apk

COPY ./tzone.ini /usr/local/etc/php/conf.d/tzone.ini

