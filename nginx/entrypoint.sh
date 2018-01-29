#!/bin/bash


if [ ! -e "/etc/nginx/ssl/cert.pem" ] || [ ! -e "/etc/nginx/ssl/key.pem" ]
then
  echo ">> generating self signed cert"
  openssl req -x509 -newkey rsa:4086 \
  -subj "/CN=localhost" \
  -keyout "/etc/nginx/ssl/key.pem" \
  -out "/etc/nginx/ssl/cert.pem" \
  -days 365 -nodes -sha256
fi

echo ">> copy /etc/nginx/external/*.conf files to /etc/nginx/conf.d/"
cp /etc/nginx/external/*.conf /etc/nginx/conf.d/ 2> /dev/null > /dev/null

# exec CMD
echo ">> exec docker CMD"
echo "$@"
exec "$@"
