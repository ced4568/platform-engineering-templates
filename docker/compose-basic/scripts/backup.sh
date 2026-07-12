#!/usr/bin/env bash
set -euo pipefail

timestamp="$(date +%Y%m%d-%H%M%S)"
backup_dir="backups"
archive="$backup_dir/compose-backup-$timestamp.tar.gz"

mkdir -p "$backup_dir"

paths=()

for path in .env compose.yml data; do
  if [ -e "$path" ]; then
    paths+=("$path")
  fi
done

if [ "${#paths[@]}" -eq 0 ]; then
  echo "No files found to back up."
  exit 1
fi

tar -czf "$archive" "${paths[@]}"

echo "Backup created:"
echo "$archive"
