#!/bin/sh

if [ -d "$APP_ROOT/vendor" ];
then
  php "$APP_ROOT/main.php"
else
  composer install
  composer dump -o
  php "$APP_ROOT/main.php"
fi

