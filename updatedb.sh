#!/bin/bash
docker exec -it postgres /setup_db.sh

echo "Database setup complete at $(date "+%Y-%m-%d %H:%M:%S")" >> ~/Desktop/updatedb.log
