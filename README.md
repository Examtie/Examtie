# Examtie
## Requirements
- Docker, docker compose

## Run
```bash
docker compose up -d 
```
This will run:
- `ghcr.io/examtie/backend`
- `ghcr.io/examtie/frontend`
- `caddy` - reverse proxy
- `redis` - for sessions
- `minio` - for exam files storage
- `minio-init`

You can change environment variables in `docker-compose.yml`