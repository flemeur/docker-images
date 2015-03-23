#!/bin/bash

: ${APPLICATION_ENV:="production"}
export APPLICATION_ENV

echo "Running in: $APPLICATION_ENV"

if [[ "$APPLICATION_ENV" == "development" ]]; then
	OWNER=$(stat -c '%u' "$HOME/public")
	GROUP=$(stat -c '%g' "$HOME/public")
	
	echo "www-data uid: $OWNER"
	echo "www-data gid: $GROUP"

	usermod -o -u $OWNER www-data
	groupmod -o -g $GROUP www-data
fi

exec /usr/bin/supervisord
