#!/usr/bin/env bash
set -euo pipefail

echo "== Docker Compose Health Check =="

docker compose config >/dev/null
docker compose ps

if docker compose ps --status running --services | grep -q .; then
  echo "At least one service is running."
else
  echo "No running services detected."
  exit 1
fi

unhealthy="$(docker compose ps --format json 2>/dev/null | grep -c '"Health":"unhealthy"' || true)"

if [ "$unhealthy" -gt 0 ]; then
  echo "One or more containers are unhealthy."
  exit 1
fi

echo "Stack health check passed."
