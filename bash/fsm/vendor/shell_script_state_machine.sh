#!/usr/bin/env bash

set -Eaeuo pipefail -o functrace

# Shell Script State machine from
# http://blog.sarah-happy.ca/2010/12/shell-script-state-machine.html

state="start"
while true; do
  case "$state" in
  "start")
    echo "initial state"
    state="next"
    ;;
  "next")
    echo "next state"
    state="done"
    ;;
  "done")
    echo "done"
    break
    ;;
  *)
    echo "invalid state \"$state\""
    break
    ;;
  esac
done
