FROM alpine:3.4
MAINTAINER Yun Zhi Lin <yun@yunspace.com>

RUN apk add --update duo_unix

COPY harden.sh /usr/sbin/harden.sh

RUN /usr/sbin/harden.sh
USER user