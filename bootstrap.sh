#!/bin/bash
set -eux

sudo apt-get update

type git >/dev/null 2>&1 || sudo apt install git -y

cd $HOME
if [[ ! -d $HOME/debian10-bootstrap ]]; then
  git clone https://github.com/kumarstack55/debian10-bootstrap.git
fi

type ansible >/dev/null 2>&1 || sudo apt install ansible -y

cd $HOME/debian10-bootstrap/playbooks
ansible-playbook site.yml
