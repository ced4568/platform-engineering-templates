SHELL := /usr/bin/env bash

.PHONY: help up down restart logs ps config backup restore update

help:
	@echo "Available commands:"
	@echo "  make up       Start PostgreSQL"
	@echo "  make down     Stop PostgreSQL"
	@echo "  make restart  Restart PostgreSQL"
	@echo "  make logs     Follow PostgreSQL logs"
	@echo "  make ps       Show container status"
	@echo "  make config   Validate rendered Compose config"
	@echo "  make backup   Create a compressed PostgreSQL backup"
	@echo "  make restore  Restore a selected PostgreSQL backup"
	@echo "  make update   Pull and recreate PostgreSQL"

up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs -f --tail=100 postgres

ps:
	docker compose ps

config:
	docker compose config

backup:
	./scripts/backup.sh

restore:
	./scripts/restore.sh

update:
	./scripts/update.sh
