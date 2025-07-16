# Examtie
## Requirements
- Docker - https://docs.docker.com/get-started/get-docker/

## Run
```bash
git clone https://github.com/Examtie/Examtie.git
cd Examtie
docker compose up -d 
```
Then visit the website at http://localhost:5000

This will run:
- `ghcr.io/examtie/examtie-backend`
- `ghcr.io/examtie/examtie-frontend`
- `mongodb` - database
- `caddy` - reverse proxy
- `redis` - for sessions
- `minio` - for exam files storage
- `minio-init`

You can change environment variables and Caddyfile in `docker-compose.yml`

