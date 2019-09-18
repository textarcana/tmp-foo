#!/usr/bin/env bash

set -Eaeuo pipefail -o functrace

# See https://stackoverflow.com/a/40069282/55478
#
# This program reads lines from a file.
#

while IFS= read -r line; do
    echo "$line"
done < "$1"
