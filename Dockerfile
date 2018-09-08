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
               auditd \
               python \
               man-db \
               manpages-dev \
               --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

ENV HISTFILE=/usr/src/app/.bash_history
ADD /.vimrc /root
ADD /.gdbinit /root
