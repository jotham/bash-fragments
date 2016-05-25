#!/bin/bash

## Usage: script-template.sh [options]
##
##    options
##
##       -e --example            Run example program
##       -h --help               This text
##

BASE=$(cd $(dirname $0); pwd -P)

usage() {
   grep "^## " "${BASH_SOURCE[0]}" | cut -c 4-
   exit 0
}

warn() {
   cat <<< "$@" 1>&2
}

error() {
   cat <<< "$@" 1>&2
   exit 1
}

[[ $# == 0 ]] && usage

example() {
   warn "This is just an example."
}

EXAMPLE=

while [[ $# -gt 0 ]]; do
   key="$1"
   case $key in
      -h|--help)
         usage
         ;;
      -e|--example)
         EXAMPLE=1
         ;;
   esac
   shift
done

if [[ -n "$EXAMPLE" ]]; then
   example
fi
