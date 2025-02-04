#!/bin/bash

PORT=${1}
trap "echo 'Stopping...'; exit" SIGINT SIGTERM

ip addr show | grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}'

while true; do
    echo "Listening on port $PORT..."
    nc -l -p $PORT 
done
