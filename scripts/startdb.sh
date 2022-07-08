#!/bin/bash

docker-compose rm -s -f -v mongodbrs && docker-compose up -d mongodbrs

sleep 5

docker exec mongodb-replicaset /scripts/initrs.sh