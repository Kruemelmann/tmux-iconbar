#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

iconbar_state="#($CURRENT_DIR/scripts/tmux_iconbar.sh)"
iconbar_state_interpolation_string="\#{iconbar_state}"

source $CURRENT_DIR/scripts/helpers.sh

do_interpolation() {
  local string="$1"
  local interpolated="${string/$iconbar_state_interpolation_string/$iconbar_state}"
  echo "$interpolated"
}

main() {
  update_tmux_option "status-right"
  update_tmux_option "status-left"
}

main
