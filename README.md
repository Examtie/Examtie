# Examtie
## Requirements
- Docker, docker compose
  
## Errors (windows)
: (HTTP code 500) server error - ports are not available: exposing port TCP 0.0.0.0:63800 -> 127.0.0.1:0: listen tcp 0.0.0.0:63800: bind: An attempt was made to access a socket in a way forbidden by its access permissions. blah blah
```bash
net stop winnat
docker start container_name
net start winnat
```
[Refrence](https://stackoverflow.com/questions/65272764/ports-are-not-available-listen-tcp-0-0-0-0-50070-bind-an-attempt-was-made-to)
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
