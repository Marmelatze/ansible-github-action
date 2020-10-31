#!/bin/sh -l

ansible-galaxy install -r ansible/requirements.yml
cd ansible

eval $1
