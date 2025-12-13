#!/bin/bash
# Usage: ./add_mosquitto_user.sh <username> <password>

# 1. Use Docker to generate the hash (Ensures compatibility)
# 2. Append (or update) it to your local file

docker run --rm -v $(pwd)/configuration/mosquitto/config:/data eclipse-mosquitto \
    mosquitto_passwd -b /data/password_file "$1" "$2"

echo "User $1 added. Now commit and push!"