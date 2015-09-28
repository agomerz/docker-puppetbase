FROM ubuntu:precise
MAINTAINER Andy Gomez <andy@andygomez.org>

ENV DEBIAN_FRONTEND='noninteractive'

RUN apt-get update

RUN apt-get install -y ca-certificates wget

RUN wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb
 
RUN dpkg -i puppetlabs-release-precise.deb

RUN apt-get update

RUN apt-get install puppet -y

VOLUME /etc/puppet/modules

VOLUME /etc/puppet/manifests



