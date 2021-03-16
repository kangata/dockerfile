#!/bin/bash

dir=$(dirname "$0")

docker build -t quetzalarc/php:7.3-cli-alpine $dir