#!/bin/bash
set -e
psql --username "$POSTGRES_USER" --dbname template1 -c "DROP DATABASE $POSTGRES_DB"
psql --username "$POSTGRES_USER" --dbname template1 -c "CREATE DATABASE $POSTGRES_DB"
psql --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -f /data/pgdump.sql
