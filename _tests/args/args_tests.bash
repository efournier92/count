#!/bin/bash

#----------------
# Name          : args_tests.bash
# Description   : Unit tests for passing arguments to count
#----------------

source './_src/args/args.bash'

test_read_args_with_no_args() {
  local message="It should return the current directory"
  local current_dir=`pwd`
  local flat_only="false"
  local expected_result="$current_dir $flat_only"
  
  local result=`read_args`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_read_args_with_dir_short_arg() {
  local message="It should return the supplied directory"
  local dir="./test/dir"
  local flat_only="false"
  local expected_result="$dir $flat_only"
  
  local result=`read_args -d "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_read_args_with_dir_longer_arg() {
  local message="It should return the supplied directory"
  local dir="./test/dir"
  local flat_only="false"
  local expected_result="$dir $flat_only"
  
  local result=`read_args --dir "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_read_args_with_dir_longest_arg() {
  local message="It should return the supplied directory"
  local dir="./test/dir"
  local flat_only="false"
  local expected_result="$dir $flat_only"
  
  local result=`read_args --directory "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_read_args_with_flat_short_arg() {
  local message="It should return the supplied directory"
  local dir=`pwd`
  local flat_only="true"
  local expected_result="$dir $flat_only"
  
  local result=`read_args -f`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_read_args_with_flat_long_arg() {
  local message="It should return the supplied directory"
  local dir=`pwd`
  local flat_only="true"
  local expected_result="$dir $flat_only"
  
  local result=`read_args --flat`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_read_args_with_all_short_args() {
  local message="It should return the supplied directory"
  local dir="./test/dir"
  local flat_only="true"
  local expected_result="$dir $flat_only"
  
  local result=`read_args -d "$dir" -f`
  
  assertEquals "$message" "$expected_result" "$result"
}

. ./bin/shunit2

