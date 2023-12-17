#!/bin/bash

docker compose down
docker rm --force --volumes --link mongodb
docker rm --force --volumes --link adminmongo
docker image rm mongo:4.4.22 mrvautin/adminmongo:latest
docker volume rm mongodb_data
docker compose build
docker compose up