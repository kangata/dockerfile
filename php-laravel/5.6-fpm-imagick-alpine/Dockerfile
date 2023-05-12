FROM quetzalarc/php-laravel:5.6-fpm-alpine

RUN apk add --no-cache --virtual .phpize-deps $PHPIZE_DEPS \
  imagemagick-dev \
  libtool \
  freetype-dev \
  libpng-dev \
  libjpeg-turbo-dev \
  jpeg-dev

RUN export CFLAGS="$PHP_CFLAGS" CPPFLAGS="$PHP_CPPFLAGS" LDFLAGS="$PHP_LDFLAGS" \
  && pecl install imagick-3.4.3 \
  && docker-php-ext-configure gd --enable-gd \
  && docker-php-ext-install gd \
  && docker-php-ext-enable imagick \
  && apk add --no-cache --virtual .imagick-runtime-deps imagemagick \
  && apk del .phpize-deps

