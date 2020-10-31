#!/bin/bash

#----------------
# Name          : 
# Description   : 
# Author        : E Fournier
# Dependencies  : 
# Arguments     : 
# Example Usage : 
#----------------

on_dir_not_found() {
  local dir="$1"

  echo "Directory Not Found: $dir"

  exit
}

