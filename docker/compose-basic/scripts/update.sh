#!/usr/bin/env bash
set -euo pipefail

echo "== Updating Docker Compose stack =="

docker compose pull
docker compose up -d --remove-orphans
docker image prune -f

echo "Update complete."
docker compose ps
