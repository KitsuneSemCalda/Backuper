#!/usr/bin/env bash

PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
export PROJECT_ROOT

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export BASE_DIR

source "$BASE_DIR/load_modules.sh"

load_modules "$BASE_DIR/utilities"

validate_dependencies "$PROJECT_ROOT/config/required_dependencies.json"
