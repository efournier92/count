#!/bin/zsh

#----------------
# Name          : count.bash
# Description   : Count the number of files and directories in the current or supplied directory
# Author        : E Fournier
# Dependencies  : find, wc
# Arguments     : $dir
# Example Usage : count -d ~/Desktop
#----------------

source "./_src/args/dir_args.bash"
source "./_src/args/flat_only_args.bash"
source "./_src/args/help_args.bash"
source "./_src/messages/help.bash"

main() {
  local is_flat_only=`read_flat_only_args "$@"`

  read_help_args "$@"

  [[ "$is_flat_only" == "true" ]] \
    && FLAT_ONLY="true"

  print_counts `read_dir_args "$@"`
}

main "$@"

