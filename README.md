# MongoDB standalone replica set

Project containing scripts automate the creation of a standalone replica set using MongoDB 

## Prerequisites
Docker Engine and Docker Compose

## Create or restart the replica set
```shell
./scripts/startdb.sh
```

## Connect to the primary docker instance
```shell
docker exec -it mongodb-replicaset mongosh
```

## Shutdown the replica set
```shell
docker-compose down
```

## Add container IP to /etc/hosts
```shell
./scripts/manage-hosts.sh
```

