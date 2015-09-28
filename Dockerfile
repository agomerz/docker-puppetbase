from ubuntu:precise
MAINTAINER Andy Gomez <andy@andygomez.org>

ENV DEBIAN_FRONTEND='noninteractive'

RUN apt-get update

RUN apt-get install -y puppet 

VOLUME /etc/puppet/modules

VOLUME /etc/puppet/manifests



