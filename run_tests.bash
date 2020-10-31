#!/bin/bash

#----------------
# Name          : run_tests.bash
# Description   : Runs project test suite
# Author        : E Fournier
# Dependencies  : shunit2
# Example Usage : ./run_tests.bash
#----------------

print_header() {
  local file="$1"

  local filename=${file##*/}

cat << EOF
____
TEST: $filename

EOF
}

run_tests_flat() {
  local file="_tests/modes/flat_tests.bash"

  print_header "$file"

  eval "./$file" 
}

run_tests_deep() {
  local file="_tests/modes/deep_tests.bash"
  
  print_header "$file"

  eval "./$file" 
}

run_tests() {
  run_tests_flat
  run_tests_deep
}

run_tests

