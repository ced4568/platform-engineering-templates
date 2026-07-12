#!/usr/bin/env bash
set -euo pipefail

timestamp="$(date +%Y%m%d-%H%M%S)"
backup_dir="backups"
backup_file="$backup_dir/postgres-$timestamp.sql.gz"

mkdir -p "$backup_dir"

if [ ! -f .env ]; then
  echo "Missing .env file."
  exit 1
fi

set -a
source .env
set +a

echo "Creating backup of database: $POSTGRES_DB"

docker compose exec -T postgres \
  pg_dump \
    --username "$POSTGRES_USER" \
    --dbname "$POSTGRES_DB" \
    --clean \
    --if-exists \
    --no-owner \
    --no-privileges \
  | gzip > "$backup_file"

echo "Backup created:"
echo "$backup_file"
