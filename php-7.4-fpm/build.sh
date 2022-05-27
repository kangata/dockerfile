#!/bin/bash

dir=$(dirname "$0")

docker build -t quetzalarc/php:7.4-fpm $dir
