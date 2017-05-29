# Bitelxux 2017

FROM debian:latest
MAINTAINER bitelxux

# Tell debconf to run in non-interactive mode
ENV DEBIAN_FRONTEND noninteractive

# Site domain. If you are planning to access this
# site using a domain name, change it in the line bellow
ENV MY_SITE localhost

ENV PKG_RESOURCES_CACHE_ZIP_MANIFESTS 1

RUN apt-get update -y
RUN apt-get install -y bind9 bind9utils
RUN apt-get install -y tcpdump vim iptables

COPY named.conf.local /etc/bind
COPY db.shifters.com /etc/bind

# Expose ports
EXPOSE 53
CMD service bind9 start && /bin/bash
