FROM quetzalarc/php-laravel:8.0-cli-elastic-alpine

RUN addgroup -S -g1000 appgroup && adduser -S -H -G appgroup -u1000 appuser

RUN mkdir -p /etc/periodic/1min

RUN echo "*       *       *       *       *       run-parts /etc/periodic/1min" >> /etc/crontabs/root

CMD ["crond", "-f"]

