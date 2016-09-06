# rpi-nginx

This repository contains Dockerfile of [nginx](https://www.nginx.com/) for [Raspberry Pi](https://www.raspberrypi.org/) published to the public [Docker Hub](https://hub.docker.com/r/nonoroazoro/).

### Base Docker Image

* [resin/rpi-raspbian:jessie](https://github.com/resin-io-library/resin-rpi-raspbian)

### Installation

1. Install [Docker for Raspberry Pi](http://blog.hypriot.com/).

2. Download from [Docker Hub](https://hub.docker.com/u/nonoroazoro/):

    `docker pull nonoroazoro/rpi-nginx`

3. Alternatively, you can build an image from Dockerfile (**In you Raspberry Pi**):

    1. Update the proxy settings for apt-get in `10proxy`.

    2. `docker build -t="nonoroazoro/rpi-nginx" github.com/nonoroazoro/rpi-nginx`

### Usage

1. Run `nginx`:

    `docker run -it --rm -p 8888:80 nonoroazoro/rpi-nginx`

2. For more usage details, please refer to [nginx](https://hub.docker.com/_/nginx/).
