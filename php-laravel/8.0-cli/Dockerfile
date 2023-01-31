FROM php:8.0-cli

RUN apt-get update && apt-get install -y --no-install-recommends libonig-dev openssl tzdata unzip zip

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./tzone.ini /usr/local/etc/php/conf.d/

RUN apt-get clean

