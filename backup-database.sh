#!/usr/bin/env bash
# ./backup.sh acme acme_db acme_user acme_pass
# https://stackoverflow.com/questions/24718706/backup-restore-a-dockerized-postgresql-database

APP=$1

BUCKET_NAME=home-dash-db-backup

TIMESTAMP=$(date +%F_%T | tr ':' '-')
TEMP_FILE=$(mktemp tmp.XXXXXXXXXX)
S3_FILE="s3://$BUCKET_NAME/$APP/$APP-backup-$TIMESTAMP.sql"

docker exec -t postgres pg_dumpall -c -U -U home > $TEMP_FILE
s3cmd put $TEMP_FILE $S3_FILE --encrypt
rm "$TEMP_FILE"