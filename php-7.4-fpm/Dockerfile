FROM php:7.4-fpm

COPY ./tzone.ini /usr/local/etc/php/conf.d/

RUN apt-get update && apt-get install -y --no-install-recommends \
	git \
  zip \
  unzip \
  vim \
  tmux \
	tzdata \
  supervisor \
	libzip-dev \
	libmcrypt-dev \
	libjpeg-dev \
  libpng-dev \
	libvpx-dev \
	libxpm-dev \
  libfreetype6-dev \
  libmagickwand-dev \
  libonig-dev

RUN pecl install imagick
RUN pecl install -o -f redis

RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN rm -rf /tmp/pear

RUN docker-php-ext-configure gd --enable-gd

RUN docker-php-ext-install \
  mbstring \
  tokenizer \
  mysqli \
  pdo_mysql \
  sockets \
  gd \
  zip

RUN docker-php-ext-enable imagick
RUN docker-php-ext-enable redis

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN mkdir -p /var/log/supervisor

