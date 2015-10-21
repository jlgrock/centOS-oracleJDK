# Table of Contents
- [Introduction](#introduction)
    - [Version](#version)
    - [Changelog](Changelog.md)
- [Hardware Requirements](#hardware-requirements)
    - [CPU](#cpu)
    - [Memory](#memory)
    - [Storage](#storage)
- [Contributing](#contributing)
- [Issues](#issues)
- [Installation](#installation)
- [Quick Start](#quick-start)
- [Configuration](#configuration)
- [References](#references)

# Introduction

Dockerfile to build a OpenJDK JRE 8 headless container image.

## Version

Current Version: **6.6-8u45**

# Hardware Requirements

## CPU

- Depend of the Java programm requirement that you need to lauch on container

## Memory

- Depend of the Java programm requirement that you need to lauch on container


## Storage

- Depend of the Java programm requirement that you need to lauch on container


# Contributing

If you find this image useful here's how you can help:

- Send a Pull Request with your awesome new features and bug fixes
- Help new users with [Issues](https://github.com/jlgrock/centOS-oraclejdk/issues) they may encounter

# Issues

Docker is a relatively new project and is active being developed and tested by a thriving community of developers and testers and every release of docker features many enhancements and bugfixes.

Given the nature of the development and release cycle it is very important that you have the latest version of docker installed because any issue that you encounter might have already been fixed with a newer docker release.

For ubuntu users I suggest [installing docker](https://docs.docker.com/installation/ubuntulinux/) using docker's own package repository since the version of docker packaged in the ubuntu repositories are a little dated.

Here is the shortform of the installation of an updated version of docker on ubuntu.

```bash
sudo apt-get purge docker.io
curl -s https://get.docker.io/ubuntu/ | sudo sh
sudo apt-get update
sudo apt-get install lxc-docker
```

Fedora and RHEL/CentOS users should try disabling selinux with `setenforce 0` and check if resolves the issue. If it does than there is not much that I can help you with. You can either stick with selinux disabled (not recommended by redhat) or switch to using ubuntu.

If using the latest docker version and/or disabling selinux does not fix the issue then please file a issue request on the [issues](https://github.com/jlgrock/centOS-oraclejdk/issues) page.

In your issue report please make sure you provide the following information:

- The host distribution and release version.
- Output of the `docker version` command
- Output of the `docker info` command
- The `docker run` command you used to run the image (mask out the sensitive bits).

# Installation

Pull the image from the docker index. This is the recommended method of installation as it is easier to update image. These builds are performed by the **Docker Trusted Build** service.

```bash
docker pull jlgrock/centOS-oraclejdk:6.6-8u45
```

You can also pull the `latest` tag which is built from the repository *HEAD*

```bash
docker pull webcenter/centOS-oraclejdk:latest
```

Alternately you can build the image locally.

```bash
git clone https://github.com/jlgrock/centOS-oraclejdk.git
cd rhel-oraclejdk
docker build --tag="centOS-oraclejdk" .
```

# Quick Start

You can launch the image using the docker command line :

- **For test purpose :**

```bash
docker run --name='centOS-oraclejdk' -it --rm \
jlgrock/centOS-oraclejdk:latest /bin/bash
```


- **For production purpose :**

This container is sort of base container. This means that you need create you own container with your Java application with base of this container (ie : FROM jlgrock/rhel-oraclejdk:latest)


# Configuration

No configuration is available. You must create you own docker image on base of this container.


