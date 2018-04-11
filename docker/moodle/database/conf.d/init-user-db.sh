#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER moodleuser WITH PASSWORD 'moodle_pass';
    CREATE DATABASE moodle WITH OWNER moodleuser;
EOSQL
