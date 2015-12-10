#!/bin/sh
echo "Compiling with go 1.4.2, target Linux"
docker run -it -v "$PWD":/go -w /go/ golang:1.4.2-cross sh -c 'go build -o main-linux main.go'
echo "Running executable in 'mybusybox' container"
docker run -v $PWD:/opt mybusybox ./opt/main-linux
