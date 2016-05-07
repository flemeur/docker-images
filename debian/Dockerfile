FROM debian

MAINTAINER Flemming Andersen <flemming@flamingcode.com>

ENV DEBIAN_FRONTEND=noninteractive \
	HISTFILE=/dev/null

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
	curl \
	ca-certificates \
	openssl && \
	apt-get clean
