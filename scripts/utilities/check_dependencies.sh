#!/usr/bin/env bash

[ -f "$BASE_DIR/log_action.sh" ] && source "$BASE_DIR/log_action.sh"

# This function check if a function exists and return True or False
command_exists() {
  if command -v "$1" >/dev/null 2>&1; then
    log "Founded $1 function"
    echo True
  else
    log "Not Founded $1 function"
    echo False
  fi
}

export -f command_exists
