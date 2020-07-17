---
title: "Docker"
---
# Docker

[Docker](https://www.docker.com/) is a lightweight VM system, originally for Linux, now supported natively in Window 10/Server 2016.

Docker for Windows allows you to run *either* Linux container or Windows native containers, but not both at the same time.  You can setup the [Windows Sub-system for Linux with Docker support](https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly) so you can use docker from Ubuntu, for example. 

## Images

Images are files containing stopped VMs.  Internally, each image has one or more *layers*.  
* Images and layers are created using the `docker image build [-t tag:value] folder` command.
* List installed images with `docker image ls [-a]`
* Remove an image with `docker rm [-f] image-name|image-hash`
* Push an image to [docker.io](https://docker.io) with `docker push user/image:tag`
* Pull an existing image from [docker.io](https://docker.io) with `docker pull image:tag`

### Dockerfile

Images are built using a `Dockerfile` which is part of your source code (add to git).  Commands in the `Dockerfile` add *layers* to the *image*.  Each line of the `Dockerfile` is run separately, from top to bottom.  The following are the common commands:
* `FROM` starts this image from a base image, e.g. `FROM alpine:latest` or `FROM windows/nanoserver`.
* `RUN` runs an executable that must exist inside the image, e.g. `RUN apk add nodejs nodejs-npm`
* `LABEL` adds as a label to the image, e.g. `LABEL maintainer=chris.j.austin@gmail.com`
* `COPY` copies files inside the image, e.g. `COPY . /src`
* `WORKDIR` changes the current directory, e.g. `WORKDIR /src`
* `EXPOSE` documents that the application has an open port, e.g. `EXPOSE 8080`
* There are other commands, see [reference documentation](https://docs.docker.com/engine/reference/builder/)

[Multi-stage builds](https://docs.docker.com/develop/develop-images/multistage-build/) can be used to reduce image sizes small by avoid storing build-time tools and files in the final run-time image.

## Containers

Containers are running *images*.  You can:
* start a new container using `docker container run [--name name] [-it|-d] image:tag [command]`
* stop a container with `docker container stop container-name`
* list containers with `docker container ls [-a]`
* run a command in an existing container with `docker container exec [-it] container-name command`
* delete a container with `docker container rm container-name`

### Restart policies

Containers can have a restart policy set on them, currently, there are three policies:
* `always` - restarted whenever stopped, including when the docker daemon restarts.
* `unless-stopped` - restarted whenever stopped, but **not** auto-started when docker restarts.
* `on-failed`- restarts if the container exits with a non-zero exit code.  Also auto-started when docker restarts.

The restart policy can be set when the container starts with `docker container run ... --restart [always|unless-stopped|on-failed] ...`

### Volumes

Volumes are file systems that can be shared between containers or between the container and the host OS.
By default, volumes are shared between containers deployed to the same host.  To share volumes between hosts you need to map the volume to a network share, e.g. an NFS share.
