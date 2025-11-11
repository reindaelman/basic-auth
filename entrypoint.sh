#!/bin/sh
set -e

# Default values (in case not provided)
USER=${BASIC_AUTH_USER:-admin}
PASS=${BASIC_AUTH_PASS:-admin1234}

echo "Creating htpasswd for user: $USER"
htpasswd -cb /etc/nginx/.htpasswd "$USER" "$PASS"

exec "$@"
