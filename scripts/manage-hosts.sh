#!/bin/bash

docker cp mongodb-replicaset:/etc/hosts ../container-hosts.txt

sudo -- sh -c -e "tail -n 1 ../container-hosts.txt >> /etc/hosts"

rm ../container-hosts.txt