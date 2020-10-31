#!/bin/bash

#----------------
# Name          : args.bash
# Description   : Interprets arguments for count
# Author        : E Fournier
#----------------

read_args() {
  while [ "$1" != "" ]; do

    case $1 in
      -d | --dir | --directory )
        shift
        local dir="$1"
        ;;

      -f | --flat )
        local flat_only="true"
        ;;

    esac
    shift
  done

  [[ -z "$dir" ]] && local dir=$(pwd)
  [[ -z "$flat_only" ]] && local flat_only="false"

  echo "$dir" "$flat_only"
}

