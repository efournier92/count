#!/bin/bash

#----------------
# Name          : flat.bash
# Description   : Count files and directories without recursion
#----------------

count_dirs_flat() {
  local dir="$1"

  local total_dirs=`find "$dir" -maxdepth 1 -type d | wc -l`

  echo "$(( total_dirs - 1))"
}

count_files_flat() {
  local dir="$1"

  local total_files=`find "$dir" -maxdepth 1 -type f | wc -l`

  echo "$total_files"
}

