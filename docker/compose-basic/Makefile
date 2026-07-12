SHELL := /usr/bin/env bash

.PHONY: help up down restart logs ps pull update health backup config

help:
	@echo "Available commands:"
	@echo "  make up       Start the stack"
	@echo "  make down     Stop the stack"
	@echo "  make restart  Restart the stack"
	@echo "  make logs     Follow container logs"
	@echo "  make ps       Show container status"
	@echo "  make pull     Pull current images"
	@echo "  make update   Pull and recreate containers"
	@echo "  make health   Run stack health checks"
	@echo "  make backup   Back up local stack data"
	@echo "  make config   Validate rendered Compose config"

up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs -f --tail=100

ps:
	docker compose ps

pull:
	docker compose pull

update:
	./scripts/update.sh

health:
	./scripts/health-check.sh

backup:
	./scripts/backup.sh

config:
	docker compose config
