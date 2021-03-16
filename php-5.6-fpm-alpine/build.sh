#!/bin/bash

dir=$(dirname "$0")

docker build -t quetzalarc/php:5.6-fpm-alpine $dir