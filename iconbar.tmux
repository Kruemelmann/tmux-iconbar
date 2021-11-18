#!/usr/bin/env bash

#CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#tmux bind-key ! run-shell "$CURRENT_DIR/scripts/tmux_iconbar.sh"

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
    local state=$("$CURRENT_DIR/scripts/tmux_iconbar.sh")
    tmux set -g @iconbar_state $state
}

main
