FROM mongo:3
ENTRYPOINT ["/entrypoint.sh"]

ENV DUMP_DIRECTORY /dump

COPY entrypoint.sh /entrypoint.sh
COPY do-backup.sh /do-backup.sh