#!/bin/bash

docker-compose rm -s -f -v mongodbtestdb && docker-compose up -d mongodbtestdb

sleep 5

docker exec mongodbtestdb /scripts/initrs.sh

docker cp mongodbtestdb:/etc/hosts ../container-hosts.txt

sudo -- sh -c -e "tail -n 1 ../container-hosts.txt >> /etc/hosts"

rm ../container-hosts.txt