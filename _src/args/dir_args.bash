#!/bin/bash

#----------------
# Name          : args.bash
# Description   : Interprets arguments for count
# Author        : E Fournier
#----------------

read_dir_args() {
  while [[ "$1" != "" ]]; do
    case $1 in

      -d | --dir | --directory )
        shift
        local dir="$1"
        ;;

    esac
    shift
  done
  
  [[ -z "$dir" ]] && local dir="$(pwd)"

  echo "$dir"
}

