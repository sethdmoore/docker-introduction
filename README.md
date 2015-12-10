# Docker Introductory Repo

## What is Docker?
Docker is a container engine that is now part of the opencontainer spec. It
provides the following benefits
* filesystem isolation
* network isolation
* rapid deployments
* portability

Docker can be the answer to "it worked on my machine", dependency hell,
security flaws, and multitenancy.


## 01_basic_dockerfile
Demonstrates how to build a basic Docker image from scratch.
```
$ docker build .  # build without tags
$ docker build . -t 'mybusybox'
$ docker run -it mybusybox /bin/sh
$ docker run mybusbox cat /text_file.txt
```

## 02_building_a_dockerfile
