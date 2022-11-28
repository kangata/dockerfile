FROM quetzalarc/php-laravel:8.1-cli-alpine

RUN apk add --no-cache supervisor

RUN rm /usr/local/bin/docker-php-entrypoint

RUN mkdir -p /etc/supervisor/conf.d

COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

COPY ./supervisord.conf /etc/supervisor/supervisord.conf

ENTRYPOINT ["docker-entrypoint.sh"]

