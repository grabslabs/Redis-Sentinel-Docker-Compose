#!/bin/sh
docker network create redis-network
docker network create grabslabs-backend_api
docker network create nginx-network
docker-compose down
docker-compose pull
docker-compose up -d --build
