#!/usr/bin/env bash

load_modules() {
  local dirPath="$1"

  if [ ! -d "$dirPath" ]; then
    echo "[ERROR] Directory $dirPath doesn't exists"
    return 1
  fi

  for file in "$dirPath"/*.sh; do
    [ -f "$file" ] || continue

    source "$file"

    echo "[INFO] Loaded module: $file"
  done
}
