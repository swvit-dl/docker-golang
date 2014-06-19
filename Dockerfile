FROM ubuntu:precise
MAINTAINER Vitaliy Sverchkov <sw.vitaliy@gmail.com>

# see http://boopathi.in/blog/dockerfile-for-golang-applications

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y curl

ADD ./go /usr/local/go

ENV PATH  /usr/local/go/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
ENV GOPATH  /go
ENV GOROOT  /usr/local/go

RUN mkdir -p /opt/go && cd /opt/go

CMD ["/bin/bash"]


