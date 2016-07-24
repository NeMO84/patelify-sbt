[![Docker Pulls](https://img.shields.io/docker/pulls/patelify/sbt.svg)](https://hub.docker.com/r/patelify/sbt/)

# patelify/sbt

A [SBT](http://www.scala-sbt.org/) container image built from [AlpineLinux](http://alpinelinux.org/). More specifically 'alpine:latest'.

## Base Docker Image

* [library/alpine:latest](https://hub.docker.com/_/alpine/)

## Image Details
- java (openjdk 1.7)
- sbt (0.13.11)

## SBT Dockerfile

This repository contains a **Dockerfile** that leverages AlpineLinux to build a lightweight [SBT](http://www.scala-sbt.org/) image to use further as a base image. This is an [automated build](https://hub.docker.com/r/patelify/sbt/) published to the public [Docker Hub Registry](https://hub.docker.com/).

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [patelify/sbt](https://hub.docker.com/r/patelify/ruby/) from the public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull patelify/sbt`


### Usage

    docker run -it --rm patelify/sbt


or if you're feeling adventureous

    docker run -it -rm patelify/ruby /bin/bash

