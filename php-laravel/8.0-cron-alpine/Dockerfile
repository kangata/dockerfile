FROM quetzalarc/laravel-php:8.0-cli-alpine

RUN mkdir -p /etc/periodic/1m

RUN echo "*       *       *       *       *       run-parts /etc/periodic/1min" >> /etc/crontabs/root

CMD ["crond", "-f"]

