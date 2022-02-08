#!/bin/bash

# config
USER="root"
PASSWORD=""
DATABASE="db"
DIRECTORY="/home/alberto/.backup/databases"
# end config
DATE=`date "+%T-%F"`

if [[ -z "$USER" || -z "$PASSWORD" || -z "$DATABASE" || -z "$DIRECTORY" ]]; then
	echo "Configuracion incorrecta.";
	exit;
fi;

mysqldump -u$USER -p$PASSWORD $DATABASE > "$DIRECTORY/$DATABASE-$DATE.sql"
exit;