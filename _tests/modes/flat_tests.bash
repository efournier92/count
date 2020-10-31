#!/bin/bash

#----------------
# Name          : count_tests.bash
# Description   : Unit test for `count` functions
# Author        : E Fournier
#----------------

source ./_src/modes/flat.bash

test_count_all_dirs_flat_with_no_dirs() {
  local message="It should "
  local dir="./_tests/_data/deep_no_dirs"
  local expected_result="0"
  
  local result=`count_dirs_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_all_dirs_flat() {
  local message="It should "
  local dir="./_tests/_data/deep_with_dirs_and_nested_files"
  local expected_result="3"
  
  local result=`count_dirs_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_flat_with_no_files() {
  local message="It should "
  local dir="./_tests/_data/no_files"
  local expected_result="0"
  
  local result=`count_files_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_flat_with_no_dirs() {
  local message="It should "
  local dir="./_tests/_data/flat_no_dirs"
  local expected_result="27"
  
  local result=`count_files_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_flat_with_dirs() {
  local message="It should "
  local dir="./_tests/_data/flat_with_dirs"
  local expected_result="27"
  
  local result=`count_files_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_flat_with_nested() {
  local message="It should "
  local dir="./_tests/_data/deep_with_dirs_and_nested_files"
  local expected_result="27"
  
  local result=`count_files_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

. ./bin/shunit2

