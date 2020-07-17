---
title: "Docker Compose"
---
# Docker Compose

[Docker Compose](https://docs.docker.com/compose/overview/) is a way of describing an application made of multiple containers.  It started as a tool called `fig` but was purchased by Docker Inc and renamed to be `docker-compose`.  

## Compose files

Compose files are YAML files that define the entire application and the default name is `docker-compose.yaml`.

* `version` is a top-level key that defines the version of the file.
* `services` defines the application services, e.g. your application layer, or Redis.
* `networks` defines how the containers can talk to each other (and the outside world).
* `volumes` define new volumes.
* `secrets` define secure storage and management of passwords, SSH keys, etc
* `configs` allow you to define application configs outside of images, keeping the images as generic as possible.

## Compose commands

* `docker-compose up [-d]` starts all the application as defined by the compose file.
* `docker-compose down` stops the application (all the containers).
* `docker-compose ps` lists the containers and the commands they were started with.
* `docker-compose top` lists the processing running inside of all the containers.
* `docker-compose restart` stops then starts the application.
* `docker-compose rm` delete the containers and networks (but not the volumes and images).