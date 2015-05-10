FROM jenkins

MAINTAINER Flemming Andersen <flemming@flamingcode.com>

USER root

RUN apt-get update && apt-get install -y make && rm -rf /var/lib/apt/lists/*

USER jenkins
