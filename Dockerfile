FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=nonintenteractive

RUN apt-get update && \
    apt-get install -y openssh-server && \
    apt-get clean

RUN mkdir ~/.ssh && chmod 700 ~/.ssh && mkdir /run/sshd

RUN /usr/sbin/sshd