#!/usr/bin/env bash
set -euo pipefail

echo "== Updating PostgreSQL stack =="

docker compose config >/dev/null
docker compose pull postgres
docker compose up -d --remove-orphans postgres
docker compose ps

echo "PostgreSQL update complete."
