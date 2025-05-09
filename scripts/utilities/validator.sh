#!/usr/bin/env bash

[ -f "$BASE_DIR/check_dependencies.sh" ] && source "$BASE_DIR/check_dependencies.sh"
[ -f "$BASE_DIR/log_action.sh" ] && source "$BASE_DIR/log_action.sh"

function validate_dependencies() {
  local requirements_file="$1"

  jq_exists=$(command_exists "jq")

  if [ "$jq_exists" == "False" ]; then
    log "jq not founded. Please install him to execute"
    exit 1
  fi

  while IFS= read -r dep; do
    if [ "$(command_exists "$dep")" == "False" ]; then
      log "Missing dependency: $dep. Install it before continuing"
    fi
  done < <(jq -r '.requiredDependencies[].name' "$requirements_file")

}

export -f validate_dependencies
