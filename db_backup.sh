#!/bin/bash

source conf/db.env
FILE=backups/backup-`date +%F`.sql

docker-compose exec db /usr/bin/mysqldump --user=$MYSQL_USER --password=$MYSQL_PASSWORD $MYSQL_DATABASE > $FILE
tar czvf $FILE.tar.gz $FILE
rm $FILE
