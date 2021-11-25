FROM php:7.3-fpm

COPY ./tzone.ini /usr/local/etc/php/conf.d/

RUN apt-get update && apt-get install -y --no-install-recommends \
	git \
  zip \
  unzip \
  vim \
  tmux \
	tzdata \
	libzip-dev \
	libmcrypt-dev \
	libjpeg-dev \
  libpng-dev \
	libvpx-dev \
	libxpm-dev \
  libfreetype6-dev \
  libmagickwand-dev


RUN pecl install imagick

RUN apt-get clean && rm -rf /var/lib/apt/lists/*


RUN docker-php-ext-configure gd \
	--with-png-dir \
	--with-jpeg-dir \
	--with-xpm-dir \
  --with-freetype-dir

RUN docker-php-ext-install \
  mbstring \
  tokenizer \
  mysqli \
  pdo_mysql \
  sockets \
  gd \
  zip

RUN docker-php-ext-enable imagick

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
