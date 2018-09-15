FROM debian:jessie

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN set -ex \
    && apt-get update \
    && apt-get install -y \
               nasm \
               vim \
               auditd \
               python \
               man-db \
               manpages-dev \
               build-essential \
               --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

ENV HISTFILE=/usr/src/app/.bash_history
ADD /.vimrc /root
ADD /.gdbinit /root
