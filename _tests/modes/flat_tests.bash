#!/bin/bash

#----------------
# Name          : flat_tests.bash
# Description   : Unit test for flat-count mode
#----------------

source "./_src/modes/flat.bash"

test_count_all_dirs_flat_with_no_dirs() {
  local message="It should count 0 directories"
  local dir="./_tests/_data/empty"
  local expected_result="0"
  
  local result=`count_dirs_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_all_dirs_flat() {
  local message="It should count 3 directories"
  local dir="./_tests/_data/empty_with_nested_dirs"
  local expected_result="3"
  
  local result=`count_dirs_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_flat_with_no_files() {
  local message="It should count 0 files"
  local dir="./_tests/_data/empty"
  local expected_result="0"
  
  local result=`count_files_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_flat_with_no_dirs() {
  local message="It should count 27 files"
  local dir="./_tests/_data/files_with_no_dirs"
  local expected_result="27"
  
  local result=`count_files_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_flat_with_dirs() {
  local message="It should count 27 files"
  local dir="./_tests/_data/files_with_empty_dirs"
  local expected_result="27"
  
  local result=`count_files_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

test_count_files_flat_with_nested_files() {
  local message="It should count 27 files"
  local dir="./_tests/_data/files_with_deeply_nested_empty_dirs"
  local expected_result="27"
  
  local result=`count_files_flat "$dir"`
  
  assertEquals "$message" "$expected_result" "$result"
}

. ./bin/shunit2

