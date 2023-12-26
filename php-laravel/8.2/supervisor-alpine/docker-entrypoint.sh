#!/bin/sh

set -e

if [ -z $1 ]; then
  supervisord -n -c /etc/supervisor/supervisord.conf
else
  supervisord -c /etc/supervisor/supervisord.conf
fi

eval $@

