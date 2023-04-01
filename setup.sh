docker network create web
docker network create --internal caddy_internal
cd ./caddy/
envsubst < Caddyfile.template > Caddyfile
cd ..
