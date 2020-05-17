#!/bin/bash
set -eux

sudo apt-get update

type git >/dev/null 2>&1 || sudo apt install git -y
type ansible >/dev/null 2>&1 || sudo apt install ansible -y

cd $HOME/debian10-bootstrap/playbooks
ansible-playbook site.yml
