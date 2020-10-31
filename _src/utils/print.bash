#!/bin/bash

#----------------
# Name          : 
# Description   : 
# Author        : E Fournier
# Dependencies  : 
# Arguments     : 
# Example Usage : 
#----------------

source messages/error.bash
source modes/flat.bash
source modes/deep.bash

print_count_flat() {
  local dir="$1"

  cat << EOF
____
FLAT
  Dirs:  `count_dirs_flat $dir`
  Files: `count_files_flat $dir`
EOF
}

print_count_deep() {
  local dir="$1"

  cat << EOF
____
DEEP
  Dirs:  `count_dirs_deep $dir`
  Files: `count_files_deep $dir`
EOF
}

print_counts() {
  local dir="$1"

  [[ ! -d "$dir" ]] && on_dir_not_found "$dir"
  
  print_count_flat "$dir"
  print_count_deep "$dir"
}

