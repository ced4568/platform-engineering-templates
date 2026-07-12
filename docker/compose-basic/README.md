# Docker Compose Basic Template

A reusable baseline for small Docker Compose services.

## Included

- Environment-based configuration
- Restart policy
- Health check
- Named network
- Log rotation
- Local data directory
- Backup script
- Update script
- Health-check script
- Makefile commands

## Quick Start

1. Copy the environment file:

    cp .env.example .env

2. Validate the compose file:

    docker compose config

3. Start the stack:

    docker compose up -d

4. Verify the containers:

    docker compose ps

## Make Commands

- make help
- make up
- make down
- make restart
- make logs
- make ps
- make pull
- make update
- make health
- make backup
- make config

## Notes

- Replace the example image before production use.
- Update ports and volumes for your application.
- Never commit your `.env` file.
- Review health checks for the application you are deploying.
