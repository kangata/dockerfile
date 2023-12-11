FROM php:8.2-fpm

RUN apt-get update && apt-get install -y --no-install-recommends \
  libzip-dev \
  tzdata \
  unzip \
  zip \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install \
  mysqli \
  pdo \
  pdo_mysql \
  zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./tzone.ini /usr/local/etc/php/conf.d/tzone.ini
