# Examtie
## Requirements
- Docker, docker compose

## Run
```bash
git clone https://github.com/Examtie/Examtie.git
cd Examtie
docker compose up -d 
```
This will run:
- `ghcr.io/examtie/backend`
- `ghcr.io/examtie/frontend`
- `mongodb` - database
- `caddy` - reverse proxy
- `redis` - for sessions
- `minio` - for exam files storage
- `minio-init`

You can change environment variables and Caddyfile in `docker-compose.yml`