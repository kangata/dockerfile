#!/bin/bash

path="$(realpath $(dirname $0))"

name="$(basename $(dirname $path))"

tag="$(basename $path)"

docker build -t "quetzalarc/$name:$tag" "$path"

