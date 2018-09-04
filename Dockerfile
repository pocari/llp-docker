FROM debian:jessie

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN set -ex \
    && apt-get update \
    && apt-get install -y \
               nasm \
               gcc \
               make \
               gdb \
               vim \
               --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

ADD /.vimrc /root
