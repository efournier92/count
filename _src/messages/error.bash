#!/bin/bash

#----------------
# Name          : error.bash
# Description   : Prints message and exits on runtime errors
#----------------

on_dir_not_found() {
  local dir="$1"

  echo "Directory Not Found: $dir"

  exit
}

