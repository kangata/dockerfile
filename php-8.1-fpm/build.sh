#!/bin/bash

dir=$(dirname "$0")

docker build -t quetzalarc/php:8.1-fpm $dir
