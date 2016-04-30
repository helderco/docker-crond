#!/bin/sh

if [ "$CRON__BACKUP_PG" ]; then
    cp /scripts/backup-pg /etc/periodic/$CRON__BACKUP_PG/
fi

if [ "$CRON__BACKUP_MY" ]; then
    cp /scripts/backup-my /etc/periodic/$CRON__BACKUP_MY/
fi

exec "$@"
