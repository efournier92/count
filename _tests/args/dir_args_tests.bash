#!/bin/bash

#----------------
# Name          : args_tests.bash
# Description   : Unit tests for passing arguments to count
#----------------

source './_src/args/dir_args.bash'

test_read_args_with_no_args() {
  local message="It should return the current directory"
  local current_dir=`pwd`
  local expected_result="$current_dir"
  
  local result=`read_dir_args`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_read_args_with_dir_short_arg() {
  local message="It should return the supplied directory"
  local dir="./test/dir"
  local expected_result="$dir"
  
  local result=`read_dir_args -d "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_read_args_with_dir_longer_arg() {
  local message="It should return the supplied directory"
  local dir="./test/dir"
  local expected_result="$dir"
  
  local result=`read_dir_args --dir "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_read_args_with_dir_longest_arg() {
  local message="It should return the supplied directory"
  local dir="./test/dir"
  local expected_result="$dir"
  
  local result=`read_dir_args --directory "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

. ./bin/shunit2

