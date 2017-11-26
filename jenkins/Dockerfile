FROM jenkins

LABEL MAINTAINER="Flemming Andersen <flemming@flamingcode.com>"

USER root

RUN apt-get update && \
	apt-get install -y \
	curl \
	git \
	mercurial \
	make \
	binutils \
	gcc \
	build-essential \
	golang && \
	rm -rf /var/lib/apt/lists/*

USER jenkins

RUN mkdir -p $HOME/go

ENV GOPATH $HOME/go
ENV PATH $PATH:$GOPATH/bin

