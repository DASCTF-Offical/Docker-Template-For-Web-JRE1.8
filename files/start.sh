#!/bin/bash

if [[ -f /flag.sh ]]; then
	source /flag.sh
fi

cd /app

if [ "$APP_CMD" ];then
	su - app -c "$APP_CMD"
else
	su - app -c "/usr/local/openjdk-8/bin/java -jar /app/app.jar"
fi
