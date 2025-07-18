#!/usr/bin/env bash

set -ex

# docker compose pull

docker compose kill
docker compose down
sleep 1

# docker volume prune -f
docker volume rm autogen-resume-writer_config

docker compose build
docker compose up -d
  # --force-recreate
# sudo chown 1000:1000 -R ./volumes ./src
# docker compose logs -f

# docker compose push

# docker run -it --rm 192.168.10.61:5000/kasm_baseline bash

echo "done"
