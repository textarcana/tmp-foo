#!/usr/bin/env bash

set -Eaeuo pipefail -o functrace

# See https://stackoverflow.com/a/40069282/55478
#
# This program reads lines from a file.
#

end_of_file=0
while [[ $end_of_file == 0 ]]; do
  read -r line
  # the last exit status is the
  # flag of the end of file
  end_of_file=$?
  echo $line
done < "$1"
