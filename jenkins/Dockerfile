FROM jenkins

MAINTAINER Flemming Andersen <flemming@flamingcode.com>

USER root

RUN apt-get update && apt-get install -y curl git mercurial make binutils gcc build-essential && rm -rf /var/lib/apt/lists/*

RUN curl -sS https://godeb.s3.amazonaws.com/godeb-amd64.tar.gz | tar -xz && chmod +x ./godeb

RUN ./godeb install && rm -f ./godeb ./go_*.deb

USER jenkins

RUN mkdir -p $HOME/go

ENV GOPATH $HOME/go

ENV PATH $PATH:$GOPATH/bin

