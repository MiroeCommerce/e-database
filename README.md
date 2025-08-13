# PostgreSQL + pgAdmin Docker Setup

This Docker Compose configuration sets up a PostgreSQL database along with pgAdmin for easy management. It is designed to work across all microservices (Java, Python, etc.) within a shared Docker network.


## Services

### 1. **PostgreSQL**
- **Image**: `postgres:latest`
- **Container Name**: `postgres-db-container`
- **Platform**: `linux/arm64` (for M1/M2 Mac or ARM64 systems)
- **Data Volume**: Persistent storage at `/var/lib/postgresql/data`

### 2. **pgAdmin**
- **Image**: `dpage/pgadmin4:latest`
- **Container Name**: `pgadmin-server-container`
- **Platform**: `linux/arm64`
- **Data Volume**: Persistent storage at `/var/lib/pgadmin`
- **Access pgAdmin via browser**: [http://localhost:${PGADMIN_PORT}](http://localhost:${PGADMIN_PORT})


## Configuration

### `.env` File (Required)
Create a `.env` file in the root directory with the following variables:

```env
# PostgreSQL Settings
POSTGRES_USER=admin
POSTGRES_PASSWORD=admin123
POSTGRES_DB=myappdb
POSTGRES_PORT=5432
POSTGRES_PORT_SECONDARY=5432

# pgAdmin Settings
PGADMIN_EMAIL=admin@example.com
PGADMIN_PASSWORD=admin123
PGADMIN_PORT=5050
PGADMIN_PORT_SECONDARY=80
```
## Usage

### Start the Containers

```bash

docker-compose up -d
```

### 2. Stop the Containers

docker-compose down



