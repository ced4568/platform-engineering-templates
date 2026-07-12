# PostgreSQL Docker Compose Templat

A reusable PostgreSQL 17 Docker Compose template for Platform Engineering projects.

This template is intended to be used as the standard PostgreSQL deployment across homelab, development, and production environments.

--

A reusable PostgreSQL 17 Docker Compose template for Platform Engineering projects.

This template is intended to be used as the standard PostgreSQL deployment across homelab, development, and production environments.

---

# Features

- PostgreSQL 17
- Environment-based configuration
- Persistent Docker volume
- Dedicated Docker network
- Automatic restart
- Health checks
- Log rotation
- Backup script
- Restore script
- Update script
- Makefile automation
- Production-ready defaults

---

# Directory Structure

```-

# Features

- PostgreSQL 17
- Environment-based configuration
- Persistent Docker volume
- Dedicated Docker network
- Automatic restart
- Health checks
- Log rotation
- Backup script
- Restore script
- Update script
- Makefile automation
- Production-ready defaults

---

# Directory Structure

```e

A reusable PostgreSQL 18 Docker Compose template for Platform Engineering projects.

This template is intended to be used as the standard PostgreSQL deployment across homelab, development, and production environments.

---

# Features

- PostgreSQL 18
- Environment-based configuration
- Persistent Docker volume
- Dedicated Docker network
- Automatic restart
- Health checks
- Log rotation
- Backup script
- Restore script
- Update script
- Makefile automation
- Production-ready defaults

---

# Directory Structure

```
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

Edit the environment variables.

```bash
vim .env
```

Validate the configuration.

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
| POSTGRES_IMAGE | PostgreSQL image tag |
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

Show container status.

```bash
make ps
```

Create backup.

```bash
make backup
```

Restore backup.

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

```
backups/
```

Example:

```
backups/postgres-20260711-214500.sql.gz
```

---

# Restore

Restore a backup.

```bash
./scripts/restore.sh backups/postgres-YYYYMMDD-HHMMSS.sql.gz
```

The restore script requires confirmation before overwriting the database.

---

# Update

Safely update PostgreSQL.

```bash
make update
```

This will:

- Pull the latest image
- Recreate the container
- Preserve database data
- Display container status

---

# Security Recommendations

- Never commit `.env`
- Always use strong passwords
- Keep backups outside the Docker host
- Limit access to PostgreSQL
- Remove host port mappings when only Docker containers require access
- Review PostgreSQL release notes before major upgrades

---

# Recommended Usag# PostgreSQL Docker Compose Template

A reusable PostgreSQL 17 Docker Compose template for Platform Engineering projects.

This template is intended to be used as the standard PostgreSQL deployment across homelab, development, and production environments.

---

# Features

- PostgreSQL 17
- Environment-based configuration
- Persistent Docker volume
- Dedicated Docker network
- Automatic restart
- Health checks
- Log rotation
- Backup script
- Restore script
- Update script
- Makefile automation
- Production-ready defaults

---

# Directory Structure

```
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

Edit the environment variables.

```bash
vim .env
```

Validate the configuration.

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
| POSTGRES_IMAGE | PostgreSQL image tag |
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

Show container status.

```bash
make ps
```

Create backup.

```bash
make backup
```

Restore backup.

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

```
backups/
```

Example:

```
backups/postgres-20260711-214500.sql.gz
```

---

# Restore

Restore a backup.

```bash
./scripts/restore.sh backups/postgres-YYYYMMDD-HHMMSS.sql.gz
```

The restore script requires confirmation before overwriting the database.

---

# Update

Safely update PostgreSQL.

```bash
make update
```

This will:

- Pull the latest image
- Recreate the container
- Preserve database data
- Display container status

---

# Security Recommendations

- Never commit `.env`
- Always use strong passwords
- Keep backups outside the Docker host
- Limit access to PostgreSQL
- Remove host port mappings when only Docker containers require access
- Review PostgreSQL release notes before major upgrade# PostgreSQL Docker Compose Template

A reusable PostgreSQL 17 Docker Compose template for Platform Engineering projects.

This template is intended to be used as the standard PostgreSQL deployment across homelab, development, and production environments.

---

# Features

- PostgreSQL 17
- Environment-based configuration
- Persistent Docker volume
- Dedicated Docker network
- Automatic restart
- Health checks
- Log rotation
- Backup script
- Restore script
- Update script
- Makefile automation
- Production-ready defaults

---

# Directory Structure

```
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

Edit the environment variables.

```bash
vim .env
```

Validate the configuration.

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
| POSTGRES_IMAGE | PostgreSQL image tag |
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
make log# PostgreSQL Docker Compose Template

A reusable PostgreSQL 17 Docker Compose template for Platform Engineering projects.

This template is intended to be used as the standard PostgreSQL deployment across homelab, development, and production environments.

---

# Features

- PostgreSQL 17
- Environment-based configuration
- Persistent Docker volume
- Dedicated Docker network
- Automatic restart
- Health checks
- Log rotation
- Backup script
- Restore script
- Update script
- Makefile automation
- Production-ready defaults

---

# Directory Structure

```
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

Edit the environment variables.

```bash
vim .env
```

Validate the configuration.

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
| POSTGRES_IMAGE | PostgreSQL image tag |
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

Show container status.

```bash
make ps
```

Create backup.

```bash
make backup
```

Restore backup.

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

```
backups/
```

Example:

```
backups/postgres-20260711-214500.sql.gz
```

---

# Restore

Restore a backup.

```bash
./scripts/restore.sh backups/postgres-YYYYMMDD-HHMMSS.sql.gz
```

The restore script requires confirmation before overwriting the database.

---

# Update

Safely update PostgreSQL.

```bash
make update
```

This will:

- Pull the latest image
- Recreate the container
- Preserve database data
- Display container status

---

# Security Recommendations

- Never commit `.env`
- Always use strong passwords
- Keep backups outside the Docker host
- Limit access to PostgreSQL
- Remove host port mappings when only Docker containers require access
- Review PostgreSQL release notes before major upgrades

---

# Recommended Usage

This template is intended for applications such as:

- NetBox
- Gitea
- Miniflux
- Docmost
- Immich
- OpenProject
- Future Platform Engineering projects

---

# License

MITs
```

Show container status.

```bash
make ps
```

Create backup.

```bash
make backup
```

Restore backup.

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

```
backups/
```

Example:

```
backups/postgres-20260711-214500.sql.gz
```

---

# Restore

Restore a backup.

```bash
./scripts/restore.sh backups/postgres-YYYYMMDD-HHMMSS.sql.gz
```

The restore script requires confirmation before overwriting the database.

---

# Update

Safely update PostgreSQL.

```bash
make update
```

This will:

- Pull the latest image
- Recreate the container
- Preserve database data
- Display container status

---

# Security Recommendations

- Never commit `.env`
- Always use strong passwords
- Keep backups outside the Docker host
- Limit access to PostgreSQL
- Remove host port mappings when only Docker containers require access
- Review PostgreSQL release notes before major upgrades

---

# Recommended Usage

This template is intended for applications such as:

- NetBox
- Gitea
- Miniflux
- Docmost
- Immich
- OpenProject
- Future Platform Engineering projects

---

# License

MITs

---

# Recommended Usage

This template is intended for applications such as:

- NetBox
- Gitea
- Miniflux
- Docmost
- Immich
- OpenProject
- Future Platform Engineering projects

---

# License

MITe

This template is intended for applications such as:

- NetBox
- Gitea
- Miniflux
- Docmost
- Immich
- OpenProject
- Future Platform Engineering projects

---

# License

MIT