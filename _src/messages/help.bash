#!/bin/bash

#----------------
# Name          : help.bash
# Project       : digitizer
# Description   : Library of functions for printing help info
#----------------

help_header() {
cat << EOF
_____
COUNT : Count Files In Directory

EOF
}

help_all() {
cat << EOF
  -d, --dir,         
  --directory       directory for which to count files and directories

  -f, --flat        do not count files and directories recursively

  -h, --help        print help menu
  
  USAGE: count -d /home/me/desktop -f
EOF
}

print_help_all() {
  help_header
  help_all
}

show_help() {
  print_help_all

  exit
}

