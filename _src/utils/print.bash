#!/bin/bash

#----------------
# Name          : print.bash
# Description   : Prints count results
#----------------

source "./_src/messages/error.bash"
source "./_src/modes/flat.bash"
source "./_src/modes/deep.bash"

print_header() {
  local dir="$1"

  cat << EOF

COUNT: $dir
EOF
}

print_count_flat() {
  local dir="$1"

  cat << EOF

Flat:
  Dirs:  `count_dirs_flat "$dir"`
  Files: `count_files_flat "$dir"`
EOF
}

print_count_deep() {
  local dir="$1"

  cat << EOF

Deep:
  Dirs:  `count_dirs_deep "$dir"`
  Files: `count_files_deep "$dir"`
EOF
}

print_counts() {
  local dir="$@"
  
  [[ ! -d "$dir" ]] && on_dir_not_found "$dir"
  
  print_header "$dir"
  if [[ "$FLAT_ONLY" ]]; then
    print_count_flat "$dir"
  else
    print_count_flat "$dir"
    print_count_deep "$dir"
  fi
}

