#!/bin/bash

#----------------
# Name          : help_args.bash
# Project       : digitizer
# Description   : Interprets command arguments for showing help info
#----------------

source "./_src/utils/print.bash"

read_help_args() {
  while [[ "$1" != "" ]]; do
    case $1 in

      -h | --help )
        local should_show_help=true
        ;;

    esac
    shift
  done
 
  if [[ "$should_show_help" == true ]]; then
    show_help
    exit
  fi
}

