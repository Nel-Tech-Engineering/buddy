#!/bin/bash
# This script is use to back file /var/log/auth.log into
cat /var/log/auth.log > monitor.log
sshpass -p "1234" scp monitor.log nelson@172.31.51.136:/home/ubuntu


