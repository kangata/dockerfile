#!/bin/bash

dir=$(dirname "$0")

docker build -t quetzalarc/php:8.0-fpm $dir
