#!/bin/zsh

#----------------
# Name          : count.bash
# Description   : Count the number of files and directories in the current or supplied directory
# Author        : E Fournier
# Dependencies  : find, wc
# Arguments     : $dir
# Example Usage : count -d ~/Desktop
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

on_dir_not_found() {
  local dir="$1"

  echo "Directory Not Found: $dir"

  exit
}

count_dirs_flat() {
  local dir="$1"

  local total_dirs=`find "$dir" -maxdepth 1 -type d | wc -l`

  echo "$(( total_dirs - 1))"
}

count_dirs_deep() {
  local dir="$1"

  local total_dirs=`find "$dir" -type d | wc -l`

  echo "$(( total_dirs - 1))"
}

count_files_flat() {
  local dir="$1"

  local total_files=`find "$dir" -maxdepth 1 -type f | wc -l`

  echo "$total_files"
}

count_files_deep() {
  local dir="$1"

  local total_files=`find "$dir" -type f | wc -l`

  echo "$total_files"
}

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

main() {
  print_counts `read_args "$@"`
}

#main "$@"

