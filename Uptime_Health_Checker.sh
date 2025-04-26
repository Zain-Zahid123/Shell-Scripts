#!/bin/bash
# Author: Zain Zahid
# Purpose: Server Loyalty (Uptime Health) Checker

: <<'EOF'
This script checks server name and uptime percentage
to determine server's reliability and loyalty to service.
EOF

# Input Section
read -p "Enter Server Name: " server
read -p "Enter Uptime Percentage (%): " uptime

echo "Evaluating server reliability..."

# Logic Section - First Condition
if [[ "$server" == "prod-server-01" ]]; then  
    echo " $server is our golden production server. Highly reliable!"

elif [[ "$uptime" -ge 90 ]]; then
    echo " Server is performing excellently with high uptime!"

else 
    echo " Server reliability is questionable. Immediate action required!"
fi

# Logic Section - Second Condition
if [[ "$server" == "backup-server-01" ]]; then
    echo " Backup server is healthy and loyal."

else 
    echo " Secondary server might need review."
fi