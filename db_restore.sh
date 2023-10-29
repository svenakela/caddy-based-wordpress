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
 echo Restoring with mariadb-backup is not scripted yet. Do it manually!
fi
