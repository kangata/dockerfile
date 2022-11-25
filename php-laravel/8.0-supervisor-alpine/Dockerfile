FROM quetzalarc/laravel-php:8.0-cli-alpine

RUN apk add --no-cache supervisor

RUN mkdir -p /etc/supervisor/conf.d

COPY ./supervisord.conf /etc/supervisor/supervisord.conf

CMD ["supervisord", "-nc", "/etc/supervisor/supervisord.conf"]

