# PostgreSQL Docker Compose Template

A reusable PostgreSQL 17 Docker Compose template for Platform Engineering projects.

This template provides a production-minded PostgreSQL deployment that can be reused across homelab, cloud, and self-hosted infrastructure.

---

# Features

- PostgreSQL 17
- Environment-based configuration
- Persistent Docker volume
- Dedicated Docker network
- Automatic restart policy
- Built-in health checks
- Log rotation
- Backup automation
- Restore automation
- Update automation
- Makefile support
- Production-ready defaults

---

# Directory Structure

```text
compose-postgres/
├── compose.yml
├── .env.example
├── .gitignore
├── Makefile
├── README.md
└── scripts
    ├── backup.sh
    ├── restore.sh
    └── update.sh
```

---

# Quick Start

Copy the example environment file.

```bash
cp .env.example .env
```

Edit your configuration.

```bash
vim .env
```

Validate the Compose configuration.

```bash
docker compose config
```

Start PostgreSQL.

```bash
docker compose up -d
```

Verify the container.

```bash
docker compose ps
```

---

# Environment Variables

| Variable | Description |
|----------|-------------|
| COMPOSE_PROJECT_NAME | Docker project name |
| POSTGRES_IMAGE | PostgreSQL image |
| POSTGRES_DB | Database name |
| POSTGRES_USER | Database user |
| POSTGRES_PASSWORD | Database password |
| POSTGRES_PORT | Host port |
| TZ | Time zone |

---

# Make Commands

Display available commands.

```bash
make help
```

Validate configuration.

```bash
make config
```

Start PostgreSQL.

```bash
make up
```

Stop PostgreSQL.

```bash
make down
```

Restart PostgreSQL.

```bash
make restart
```

View logs.

```bash
make logs
```

View running containers.

```bash
make ps
```

Create a backup.

```bash
make backup
```

Restore a backup.

```bash
make restore
```

Update PostgreSQL.

```bash
make update
```

---

# Backup

Create a compressed PostgreSQL backup.

```bash
make backup
```

Backups are stored in:

```text
backups/
```

Example:

```text
backups/postgres-20260712-003000.sql.gz
```

---

# Restore

Restore a previous backup.

```bash
./scripts/restore.sh backups/postgres-YYYYMMDD-HHMMSS.sql.gz
```

The restore script asks for confirmation before modifying the database.

---

# Update

Safely update PostgreSQL.

```bash
make update
```

The update process:

- Pulls the latest PostgreSQL image
- Recreates the container
- Preserves persistent data
- Displays container status

---

# Security Recommendations

- Never commit `.env`
- Use a strong database password
- Store backups off-host
- Limit network exposure
- Remove published ports when PostgreSQL is only accessed by Docker containers
- Review PostgreSQL release notes before upgrading major versions

---

# Recommended Usage

This template is intended for:

- NetBox
- Gitea
- Miniflux
- Immich
- Docmost
- OpenProject
- Future Platform Engineering projects

---

# License

MIT