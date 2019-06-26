FROM ubuntu:10.04
MAINTAINER felix11h.dev@gmail.com

USER root

RUN apt-get update; exit 0
RUN apt-get install -y --fix-missing --force-yes texlive-full; exit 0
RUN apt-get install -y --force-yes latexmk; exit 0


RUN useradd -ms /bin/bash docker
USER docker

WORKDIR /home/lab

