#!/bin/bash
# Cloud DevOps: Multi-server health check using FOR loop

echo "Starting server health checks..."

# List of server IPs or hostnames
servers=("server1.example.com" "server2.example.com" "server3.example.com")

for server in "${servers[@]}"
do
    echo "Checking server: $server"
    if ping -c 2 "$server" > /dev/null 2>&1
    then
        echo "✅ $server is reachable."
    else
        echo "❌ $server is unreachable!"
    fi
    sleep 2
done

echo "All server checks completed."
