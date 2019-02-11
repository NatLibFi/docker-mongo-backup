#!/bin/bash
set -e 

DUMP_FILE=${DUMP_DIRECTORY}/${BACKUP_PREFIX}-`date +%d%m%yT%H%M.archive`

echo -n "Dumping database to ${DUMP_FILE}..."
/usr/bin/mongodump --archive --host $DB_HOST --db $DB_NAME > ${DUMP_FILE}
echo "Done."
