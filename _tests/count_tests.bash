#!/bin/bash

#----------------
# Name          : count_tests.bash
# Description   : Unit test for `count` functions
# Author        : E Fournier
#----------------

source ../count.bash

test_count_all_dirs_flat_with_no_dirs() {
  local message="It should "
  local dir="./_data/deep_no_dirs"
  local expected_result="0"
  
  local result=`count_dirs_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_all_dirs_flat() {
  local message="It should "
  local dir="./_data/deep_with_dirs_and_nested_files"
  local expected_result="3"
  
  local result=`count_dirs_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_all_dirs_deep() {
  local message="It should "
  local dir="./_data/deep_with_dirs_and_nested_files"
  local expected_result="3"
  
  local result=`count_dirs_deep "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_all_dirs_deep_without_nested_dirs() {
  local message="It should "
  local dir="./_data/deep_with_nested_dirs"
  local expected_result="9"
  
  local result=`count_dirs_deep "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_flat_with_no_files() {
  local message="It should "
  local dir="./_data/no_files"
  local expected_result="0"
  
  local result=`count_files_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_flat_with_no_dirs() {
  local message="It should "
  local dir="./_data/flat_no_dirs"
  local expected_result="27"
  
  local result=`count_files_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_flat_with_dirs() {
  local message="It should "
  local dir="./_data/flat_with_dirs"
  local expected_result="27"
  
  local result=`count_files_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_flat_with_nested() {
  local message="It should "
  local dir="./_data/deep_with_dirs_and_nested_files"
  local expected_result="27"
  
  local result=`count_files_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_deep_with_no_dirs() {
  local message="It should "
  local dir="./_data/flat_no_dirs"
  local expected_result="27"
  
  local result=`count_files_deep "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_deep_with_nested_files() {
  local message="It should "
  local dir="./_data/deep_with_dirs_and_nested_files"
  local expected_result="36"
  
  local result=`count_files_deep "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_deep_with_nested_dot_files() {
  local message="It should "
  local dir="./_data/deep_with_dirs_and_nested_files_and_dot_files"
  local expected_result="39"
  
  local result=`count_files_deep "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

. ../bin/shunit2

