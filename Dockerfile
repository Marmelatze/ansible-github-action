FROM python:3.8-alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git git-fast-import openssh

RUN pip3 install ansible

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
