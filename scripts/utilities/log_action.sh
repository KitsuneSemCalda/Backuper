#!/usr/bin/env bash

function log() {
  echo "[$(date '+%Y-%m-%d %H:%M')] $*"
}

export -f log
