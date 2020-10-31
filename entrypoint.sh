#!/bin/bash

set -ex

mkdir -p ~/.ssk || true
echo $KNOWN_HOSTS >> ~/.ssk/known_hosts

echo "foo"
eval `ssh-agent -s`
echo "$SSH_PRIVATE_KEY"
ssh-add - <<< "$SSH_PRIVATE_KEY"

ansible-galaxy install -r ansible/requirements.yml
cd ansible

eval $1
