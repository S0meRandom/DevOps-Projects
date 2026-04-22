#!/bin/bash
#
#
ram=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
cpu=$(mpstat|grep all | awk '{print $3}')
diskC=$(df | grep mnt/c | awk '{print $5}')
version=$(grep "PRETTY_NAME" /etc/os-release | cut -d'"' -f2)
uptime=$(uptime | awk '{print $3}')
loggedUsers=$(who | wc -l)
echo "--Performance Check--"
echo "Cpu Usage: $cpu%"
echo "Ram Usage: $ram%"
echo "Disk C Usage: $diskC"
echo "Current uptime: $uptime min"
echo "Logged users count: $loggedUsers"
echo "---------------------"
echo "Os Version: $version"
