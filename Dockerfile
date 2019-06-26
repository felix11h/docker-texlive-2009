FROM ubuntu:10.04
MAINTAINER felix11h.dev@gmail.com

USER root

RUN apt-get update --fix-missing 
RUN apt-get install -y texlive-full

RUN useradd -ms /bin/bash docker
USER docker

WORKDIR /home/lab

