#!/bin/bash

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo dir=$dir

cd $dir

./init-env.sh

. ./env.sh

ansible-playbook -i hosts --limit localhost -c local --ask-become-pass site.yml
