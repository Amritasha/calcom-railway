#!/bin/sh
set -e

# Construct DATABASE_URL from individual PG vars
export DATABASE_URL="postgresql://${PGUSER}:${PGPASSWORD}@${PGHOST}:${PGPORT:-5432}/${PGDATABASE}?sslmode=disable"

# Use RAILWAY_PUBLIC_DOMAIN to set NEXTAUTH_URL if not explicitly provided
if [ -z "$NEXTAUTH_URL" ] && [ -n "$RAILWAY_PUBLIC_DOMAIN" ]; then
  export NEXTAUTH_URL="https://${RAILWAY_PUBLIC_DOMAIN}"
fi

exec node apps/web/server.js
