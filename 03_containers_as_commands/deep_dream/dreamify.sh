#!/bin/sh
docker run -i -t -e INPUT=$1 -v $PWD:/data herval/deepdream
