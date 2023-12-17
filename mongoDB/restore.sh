#!/bin/bash

docker cp ./db_dumps mongodb:./dump/
docker container exec -it mongodb mongorestore --uri="mongodb://root:root1@mongo:27017"