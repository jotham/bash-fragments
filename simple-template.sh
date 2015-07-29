#!/bin/bash

# Script that requires one parameter to run

BASE=$(cd $(dirname $0); pwd -P)

error() {
   cat <<< "$@" 1>&2
   exit 1
}

[[ $# == 0 ]] && error "Usage: $(basename $0) <something>"

printf "Running with %s.\n" "$1"
