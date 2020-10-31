#!/bin/bash

#----------------
# Name          : deep_tests.bash
# Description   : Unit test for deep-count mode
#----------------

source './_src/modes/deep.bash'

test_count_dirs_deep_with_empty_dir() {
  local message="It should count 0 dirs"
  local dir="./_tests/_data/empty"
  local expected_result="0"
  
  local result=`count_dirs_deep "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_dirs_deep_with_empty_nested_dirs() {
  local message="It should count 3 directories"
  local dir="./_tests/_data/empty_with_nested_dirs"
  local expected_result="3"
  
  local result=`count_dirs_deep "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_dirs_deep_with_deeply_nested_dirs() {
  local message="It should count 9 directories"
  local dir="./_tests/_data/files_with_deeply_nested_empty_dirs"
  local expected_result="9"
  
  local result=`count_dirs_deep "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_deep_with_no_dirs() {
  local message="It should count 27 files"
  local dir="./_tests/_data/files_with_no_dirs"
  local expected_result="27"
  
  local result=`count_files_deep "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_deep_with_nested_files() {
  local message="It should count 36 files"
  local dir="./_tests/_data/nested_files"
  local expected_result="36"
  
  local result=`count_files_deep "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_deep_with_nested_dot_files() {
  local message="It should count 39 files"
  local dir="./_tests/_data/nested_dot_files"
  local expected_result="39"
  
  local result=`count_files_deep "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

. ./bin/shunit2

