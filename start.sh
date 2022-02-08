#!/bin/sh

export N8N_HOST="$APP_NAME.herokuapp.com"
export VUE_APP_URL_BASE_API="https://$APP_NAME.herokuapp.com/"
export WEBHOOK_TUNNEL_URL="https://$APP_NAME.herokuapp.com/"

if [ -z ${PORT+x} ]; then echo "PORT variable not defined, leaving N8N to default port."; else export N8N_PORT=$PORT; echo "N8N will start on '$PORT'"; fi

n8n start
