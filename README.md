# Docker Introduction

## What is Docker?
Docker is a container engine that is now part of the opencontainer spec. It
provides the following benefits
* filesystem isolation
* resource isolation
* network isolation
* rapid deployments
* portability

## Limitations
* orchestration is difficult
* data persistence (databases, filesystem, etc)

Docker can be the answer to "it worked on my machine", dependency hell,
security flaws, and multitenancy.

# Installation
Installing Docker on your system is quite easy

Linux:
>curl -sSL https://get.docker.com/ | sh
OSX & Windows: Docker toolbox (requires tc-linux VM to emulate syscalls)
>https://www.docker.com/docker-toolbox


# Walkthrough

## 01_basic_dockerfile
Demonstrates how to build a basic Docker image from scratch.  
You will rarely (if ever) have to do this.
```
$ docker build .  # build without tags
$ docker build . -t 'mybusybox' # build image with a tag
$ docker run -it mybusybox # run image command -interactively with -teletype
$ docker run mybusybox cat /text_file.txt # run a command other than default
$ docker run -d mybusybox sleep 300 # run docker in daemon mode
$ docker ps # list running docker containers
$ docker ps -a # list all containers (including stopped ones)
```

## 02_running_dockerhub_containers
Shows how easily services and software packaged as a Docker image can be 
installed, deployed and run.
* graphite.sh
* jenkins.sh

## 03_containers_as_commands
Demonstrates how Docker containers can be run as executables
* ./dreamify
* ./golang_xc

## 04_building_a_dockerfile
Covers building and debugging Dockerfiles
* see Dockerfile.example for reference
* blog/ is a bare rails app
