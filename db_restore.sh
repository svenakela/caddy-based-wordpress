#!/bin/bash

if [ "$1" == "" ]
then
  echo "db_restore.sh date_for_backup_file"
  exit 1
fi

source conf/db.env
GZ="backups/backup-$1.sql.tar.gz"

if [ -f $GZ ]
then
  SQL="`tar xvzf $GZ`"
  echo Restoring DB from $SQL...
  cat $SQL | docker exec -i `docker-compose ps -q db` /usr/bin/mysql --user=root --password=$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE
  rm $SQL
fi
