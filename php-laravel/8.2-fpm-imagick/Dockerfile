FROM quetzalarc/php-laravel:8.2-fpm

RUN apt-get update && apt-get install -y --no-install-recommends \
  libzip-dev \
  libmcrypt-dev \
  libjpeg-dev \
  libpng-dev \
  libvpx-dev \
  libxpm-dev \
  libfreetype6-dev \
  libmagickwand-dev \
  libonig-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN pecl install imagick

RUN docker-php-ext-configure gd --enable-gd
RUN docker-php-ext-install opcache gd
RUN docker-php-ext-enable imagick

RUN rm -rf /tmp/pear
