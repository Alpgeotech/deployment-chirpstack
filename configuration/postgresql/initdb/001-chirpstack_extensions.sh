#!/bin/bash

# The script 001-chirpstack_extensions.sh enables specific PostgreSQL extensions required by the ChirpStack application.
# pg_trgm;: Enables the pg_trgm (Trigram) extension. This is typically used for performing fast text similarity searches (e.g., searching for device names or descriptions).
# hstore;: Enables the hstore extension. This allows PostgreSQL to store sets of key-value pairs within a single value, which is often used for storing dynamic configuration or tags associated with devices.

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname="$POSTGRES_DB" <<-EOSQL
    create extension pg_trgm;
    create extension hstore;
EOSQL
