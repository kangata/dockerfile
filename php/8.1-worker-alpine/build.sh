#!/bin/bash

dir="$(realpath $(dirname $0))"

tag="$(basename $dir)"

docker build -t quetzalarc/php:"$tag" "$dir"
