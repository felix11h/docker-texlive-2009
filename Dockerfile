FROM ubuntu:10.04
MAINTAINER felix11h.dev@gmail.com

USER root

# RUN apt-get update
RUN apt-get install -y texlive-full
RUN apt-get install -y latexmk

# needed for syntax highlighting of code with minted
RUN apt-get install -y python python-pygments

RUN useradd -ms /bin/bash docker
USER docker

WORKDIR /home/lab
ENTRYPOINT ["latexmk"]
CMD ["-help"]


