#!/bin/bash
read -p "Enter the username: " username

echo "This script will check for privilage escalation vulnerablities"
echo "-------------------------------------------------------"
echo "Finding all files with setuid and setgid..."
find / -perm -4000 -type f -exec ls -l {} \; 2>/dev/null
echo "-------------------------------------------------------"


