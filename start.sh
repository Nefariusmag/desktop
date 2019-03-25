#!/usr/bin/env bash

if [ -n "$(cat /etc/issue | grep Ubuntu)" ]; then
    echo "It is Ubuntu"
    apt-get update -y
    apt-get -y install curl python
fi
if [ -n "$(cat /etc/issue | grep Red)" ]; then
    echo "It is Red Hat"
    dnf -y install curl python
fi

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
pip install ansible

ansible-playbook workspace.yml
