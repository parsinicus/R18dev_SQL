#!/bin/bash
docker compose -f docker/docker-compose.yml up --build -d

docker exec -it postgres docker/setup_db.sh
