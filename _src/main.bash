#!/bin/zsh

#----------------
# Name          : count.bash
# Description   : Count the number of files and directories in the current or supplied directory
# Author        : E Fournier
# Dependencies  : find, wc
# Arguments     : $dir
# Example Usage : count -d ~/Desktop
#----------------

source './args/args.bash'
source './utils/print.bash'

main() {
  print_counts `read_args "$@"`
}

main "$@"

