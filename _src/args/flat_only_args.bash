#!/bin/bash

#----------------
# Name          : args.bash
# Description   : Interprets arguments for count
# Author        : E Fournier
#----------------

read_flat_only_args() {
  while [ "$1" != "" ]; do

    case $1 in
      -f | --flat )
        local flat_only="true"
        ;;

    esac
    shift
  done

  [[ -z "$flat_only" ]] && local flat_only="false"

  echo "$flat_only"
}

