#!/bin/bash

path="$(realpath $(dirname $0))"

php_version="$(basename $(dirname $path))"
php_tag="$(basename $path)"

image_name="php-laravel"
image_tag="$php_version-$php_tag"

image="quetzalarc/$image_name:$image_tag"

docker buildx build \
  --push \
  --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 \
  -t "$image" "$path"
