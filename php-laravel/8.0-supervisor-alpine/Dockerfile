FROM quetzalarc/php-laravel:8.0-cli-alpine

RUN addgroup -S -g1000 appgroup && adduser -S -H -G appgroup -u1000 appuser

RUN apk add --no-cache supervisor

RUN rm /usr/local/bin/docker-php-entrypoint

RUN mkdir -p /etc/supervisor/conf.d

COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

COPY ./supervisord.conf /etc/supervisor/supervisord.conf

ENTRYPOINT ["docker-entrypoint.sh"]

