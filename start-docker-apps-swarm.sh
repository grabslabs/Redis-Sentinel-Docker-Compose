#!/bin/sh
docker network create -d overlay redis-network
docker network create -d overlay grabslabs-backend_api
docker network create -d overlay nginx-network

docker-compose -f docker-compose.yml -f docker-compose.build.yml build --parallel

docker stack rm redis
docker stack deploy --compose-file docker-compose.yml redis