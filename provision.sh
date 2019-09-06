#!/bin/bash

sudo apt-get -y install git virtualenv

git clone https://github.com/ssledz/workstation-setup.git

cd workstation-setup

./ansible-playbook-run.sh -a