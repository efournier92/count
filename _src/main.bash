#!/bin/zsh

#----------------
# Name          : count.bash
# Description   : Count the number of files and directories in the current or supplied directory
# Author        : E Fournier
# Dependencies  : find, wc
# Arguments     : $dir
# Example Usage : count -d ~/Desktop
#----------------

source './args/dir_args.bash'
source './args/flat_only_args.bash'
source './utils/print.bash'

main() {
  local is_flat_only=`read_flat_only_args "$@"`

  [[ "$is_flat_only" == "true" ]] \
    && FLAT_ONLY="true"

  print_counts `read_dir_args "$@"`
}

main "$@"

