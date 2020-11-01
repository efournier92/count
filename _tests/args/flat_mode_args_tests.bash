#!/bin/bash

#----------------
# Name          : args_tests.bash
# Description   : Unit tests for passing arguments to count
#----------------

source './_src/args/dir_args.bash'
source './_src/args/flat_only_args.bash'

test_read_args_with_flat_short_arg() {
  local message="It should return the supplied directory"
  local flat_only="true"
  local expected_result="$flat_only"
  
  local result=`read_flat_only_args -f`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_read_args_with_flat_long_arg() {
  local message="It should return the supplied directory"
  local flat_only="true"
  local expected_result="$flat_only"
  
  local result=`read_flat_only_args --flat`
  
  assertEquals "$message" "$expected_result" "$result"
}

. ./bin/shunit2

