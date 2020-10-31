#!/bin/bash

#----------------
# Name          : deep.bash
# Description   : Counts files and directories recursively
#----------------

count_dirs_deep() {
  local dir="$1"

  local total_dirs=`find "$dir" -type d | wc -l`

  echo "$(( total_dirs - 1))"
}

count_files_deep() {
  local dir="$1"

  local total_files=`find "$dir" -type f | wc -l`

  echo "$total_files"
}

