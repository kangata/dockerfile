#!/bin/bash

path="$(realpath $(dirname $0))"

name="$(basename $(dirname $path))"

tag="$(basename $path)"

image="quetzalarc/$name:$tag"

echo "push $image"

docker push "$image"

