#!/bin/bash


if [ "$SUPYBOT_CONF_FILE" != "" ]; then

    exec supybot $SUPYBOT_CONF_FILE

fi

exec "$@"
