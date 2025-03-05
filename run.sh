#!/bin/bash
docker compose -f docker/docker-compose.yml up --build -d

docker exec -it postgres /setup_db.sh
