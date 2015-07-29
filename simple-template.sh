#!/bin/bash

error() {
   cat <<< "$@" 1>&2
   exit 1
}

[[ $# == 0 ]] && error "Usage: $(basename $0) <URL>"

