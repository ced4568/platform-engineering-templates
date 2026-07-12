#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

echo "== Platform Engineering Templates Validation =="

validate_compose() {
  local directory="$1"

  echo
  echo "Validating: $directory"

  docker compose \
    --project-directory "$directory" \
    --env-file "$directory/.env.example" \
    -f "$directory/compose.yml" \
    config >/dev/null

  echo "PASS: $directory"
}

validate_script() {
  local script="$1"

  bash -n "$script"
  echo "PASS: $script"
}

validate_compose "docker/compose-basic"
validate_compose "docker/compose-postgres"

while IFS= read -r script; do
  validate_script "$script"
done < <(find docker -type f -path "*/scripts/*.sh" | sort)

echo
git diff --check

echo
echo "All template validation checks passed."
