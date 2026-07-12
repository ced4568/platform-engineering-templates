#!/usr/bin/env bash
set -euo pipefail

if [ ! -f .env ]; then
  echo "Missing .env file."
  exit 1
fi

set -a
source .env
set +a

backup_file="${1:-}"

if [ -z "$backup_file" ]; then
  echo "Usage:"
  echo "  ./scripts/restore.sh backups/postgres-YYYYMMDD-HHMMSS.sql.gz"
  exit 1
fi

if [ ! -f "$backup_file" ]; then
  echo "Backup not found: $backup_file"
  exit 1
fi

echo "WARNING: This will overwrite database: $POSTGRES_DB"
read -r -p "Type RESTORE to continue: " confirmation

if [ "$confirmation" != "RESTORE" ]; then
  echo "Restore cancelled."
  exit 1
fi

gzip -dc "$backup_file" \
  | docker compose exec -T postgres \
      psql \
        --username "$POSTGRES_USER" \
        --dbname "$POSTGRES_DB"

echo "Restore completed."
