#!/bin/bash

#----------------
# Name          : run_tests.bash
# Description   : Runs test suite for the project
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

run_tests_args() {
  local file="_tests/args/args_tests.bash"

  print_header "$file"

  eval "./$file" 
}

run_tests_mode_flat() {
  local file="_tests/modes/flat_tests.bash"

  print_header "$file"

  eval "./$file" 
}

run_tests_mode_deep() {
  local file="_tests/modes/deep_tests.bash"
  
  print_header "$file"

  eval "./$file" 
}

run_tests() {
  test_file="$1"
  
  if [[ "$test_file" == "args" ]]; then
    run_tests_args
  elif [[ "$test_file" == "mode_flat" ]]; then
    run_tests_mode_flat
  elif [[ "$test_file" == "mode_deep" ]]; then
    run_tests_mode_deep
  else
    run_tests_args
    run_tests_mode_flat
    run_tests_mode_deep
  fi
}

run_tests "$@"

