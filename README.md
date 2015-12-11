# Docker Introduction

## What is Docker?
Docker is a container engine that is now part of the opencontainer spec. It
provides the following benefits
* process isolation
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

## Linux: Native installation
>curl -sSL https://get.docker.com/ | sh

## OSX & Windows: Docker toolbox
>https://www.docker.com/docker-toolbox

**NOTE**: Windows and OSX do not directly support the system calls docker 
makes, as cgroups and jails are not implemented in the kernels of those
operating systems. Instead, Docker-Toolbox installs a binary that calls
the docker daemon inside of an extremely light TinyCore Linux VM.

When binding ports, you should be aware of this fact as daemons will not
typically listen on the interface you expect. They will instead listen on
the VirtualBox Host-only Adapter (typically vboxnet0).

You can discover which interface Docker will be binding to by issuing the
following command (assuming you did not change the name of your docker vm
from default).

>docker-machine ip default


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
