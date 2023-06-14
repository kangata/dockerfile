FROM quetzalarc/php-laravel:8.1-cli-alpine

RUN mkdir -p /etc/periodic/1min

RUN echo "*       *       *       *       *       run-parts /etc/periodic/1min" >> /etc/crontabs/root

CMD ["crond", "-f"]

