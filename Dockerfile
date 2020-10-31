FROM ubuntu:bionic

RUN apt-get update \
  && apt install -y python3-pip ssh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]