#!/bin/bash

./init-env.sh

. ./env.sh

. <(test -e /tmp/fun.sh || curl -Ls https://raw.githubusercontent.com/ssledz/bash-fun/master/src/fun.sh > /tmp/fun.sh; cat /tmp/fun.sh)

show_help() {
  cat << EOF

  Usage: ${0##*/} [-a] [-h] [install-packages | install-dotfiles | install-docker]*

  Runs playbook with specified tags.

  -a                          Run all tags
  -h                          Print this help.

EOF
}


dry_run=0
tags=

while getopts ":ah" opt; do

  case $opt in
    a)
      tags="install-packages,install-dotfiles,install-docker"
      ;;
    h)
      show_help
      exit 0
      ;;
    \?)
      echo >&2
      echo "  Invalid option: -$OPTARG" >&2
      show_help
      exit 1
      ;;
    :)
      echo >&2
      echo "  Option -$OPTARG requires an argument" >&2
      show_help
      exit 2
      ;;
    *)
      show_help
      exit 3
      ;;
  esac

done

shift $((OPTIND-1)) # Shift off the options and optional --

[[ -z "$tags" ]] && tags=$(list $@ | join ,)

required=(tags)

for req in ${required[@]}; do
  [[ -z ${!req} ]] && echo && echo "  Please specify $req" && show_help &&  exit 1
done

ansible-playbook -i hosts --limit localhost -c local --ask-become-pass --tags "$tags" site.yml
