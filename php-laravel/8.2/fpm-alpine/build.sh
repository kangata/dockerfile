#!/bin/bash

path="$(realpath $(dirname $0))"

php_version="$(basename $(dirname $path))"
php_tag="$(basename $path)"

image_name="php-laravel"
image_tag="$php_version-$php_tag"

image="quetzalarc/$image_name:$image_tag"

docker build -t "quetzalarc/$image" "$path"