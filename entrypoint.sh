#!/bin/bash

set -e

mkdir -p ~/.ssk || true
echo $KNOWN_HOSTS >> ~/.ssk/known_hosts

eval `ssh-agent -s`
ssh-add - <<< "$SSH_PRIVATE_KEY"

ansible-galaxy install -r ansible/requirements.yml
cd ansible

eval $1
