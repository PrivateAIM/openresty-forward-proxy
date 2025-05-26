#!/bin/sh
if [ -z "$PROXY_USERNAME" ] || [ -z "$PROXY_PASSWORD" ];
then
    echo "PROXY_USERNAME and PROXY_PASSWORD environment variables need to be set."
    exit 1
fi

printf "%s" "$PROXY_PASSWORD" | htpasswd -ic /etc/nginx/conf.d/.htaccess "$PROXY_USERNAME"
exec "${@}"
