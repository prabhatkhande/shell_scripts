#!/bin/bash

echo  "Hi $(whoami) ! Welcome to the DevOps Journey"

echo "--------------------------------------------------------------------------"

echo "Current date and time is: $(date)"

echo "--------------------------------------------------------------------------"

echo "the uptime of the server is: $(uptime)"

echo "--------------------------------------------------------------------------"

echo -e "Last login details are:\n$(last -a | head -4)"

echo "--------------------------------------------------------------------------"

echo "Disk Space Available:" && df -H | xargs | awk '{print $11 "/" $9}'

echo "--------------------------------------------------------------------------"

echo -e "\nRam Utilization:" && free  | xargs | awk '{print $13 "/" $8}'

echo "--------------------------------------------------------------------------"
echo -e "\nTop CPU Processes:" && top | head -5
