FROM php:7.3-fpm

COPY ./tzone.ini /usr/local/etc/php/conf.d/

RUN apt-get update && apt-get install -y \
	git \
	tzdata \
	libzip-dev \
	libmcrypt-dev \
	libjpeg-dev \
  libpng-dev \
	libvpx-dev \
	libxpm-dev \
	&& docker-php-ext-configure gd \
	--with-png-dir \
	--with-jpeg-dir \
	--with-xpm-dir \
  && docker-php-ext-install mbstring tokenizer mysqli pdo_mysql sockets gd zip \
	&& apt-get clean

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
