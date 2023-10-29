#!/bin/bash

mkdir -p backups
source conf/db.env
FILE=backup-`date +%F`.sql

docker compose exec db bash -c "/usr/bin/mariadb-backup --backup --user=root --password=$MYSQL_ROOT_PASSWORD --target-dir=tmp/bcp && tar czvf /tmp/$FILE.tar.gz /tmp/bcp && rm -rf /tmp/bcp"
docker compose cp db:/tmp/$FILE.tar.gz ./backups
docker compose exec db bash -c "rm -f /tmp/$FILE.tar.gz; rm -rf /tmp/bcp"
