#!/bin/bash

#----------------
# Name          : 
# Description   : 
# Author        : E Fournier
# Dependencies  : 
# Arguments     : 
# Example Usage : 
#----------------

read_args() {
  [[ "$VERBOSE" = true ]] && log_arguments "${FUNCNAME[0]}" "$@"
  while [ "$1" != "" ]; do

    case $1 in
      -d | --dir | --directory )
        shift
        local dir="$1"
        ;;

    esac
    shift
  done

  [[ -z "$dir" ]] && local dir=$(pwd)

  echo "$dir"
}

