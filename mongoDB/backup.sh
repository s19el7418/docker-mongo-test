#!/bin/bash
echo "start backing up the database"
docker container exec -it mongodb mongodump --uri="mongodb://root:root1@mongo:27017"
docker cp mongodb:./dump/  db_dumps