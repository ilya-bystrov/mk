#!/usr/bin/env bash

########################################
##   mk: Bash-based Automation Tool   ##
## https://github.com/ilya-bystrov/mk ##
########################################

shopt -s -o errexit
shopt -s -o pipefail
shopt -s -o nounset
shopt -s inherit_errexit

x() {
  shopt -s -o xtrace
}

hello() {
  echo 'Hello, World!'
}

bye() {
  echo 'bye-bye.'
}

while [ $# != 0 ]; do
  if [ "$(type -t $1)" == 'function' ]; then
    $1 
  else
    exit 1
  fi 
  shift
done
