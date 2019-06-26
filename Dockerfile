FROM ubuntu:10.04
MAINTAINER felix11h.dev@gmail.com

USER root

RUN apt-get update; exit 0
RUN apt-get install -y --fix-missing texlive-full; exit 0
RUN apt-get install -y latexmk; exit 0

# needed for syntax highlighting of code with minted
RUN apt-get install -y python python-pygments; exit 0

RUN useradd -ms /bin/bash docker
USER docker

WORKDIR /home/lab
ENTRYPOINT ["latexmk"]
CMD ["-help"]


