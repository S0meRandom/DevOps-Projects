#!/bin/bash
#
#



ips=$(cat log.txt | awk '{print $1}' | sort | uniq -c | sort -nr | head -n 5 )
paths=$(cat log.txt | awk '{print $6,$7,$8}' | sort | uniq -c | sort -nr | head -n 5)
sCodes=$(cat log.txt | awk '{print $9}' | sort | uniq -c | sort -nr | head -n 4)
echo "--Ip adresses with most requests--"
echo "$ips"
echo "--Most requested methods and paths--"
echo "$paths"
echo "--Most common status codes--"
echo "$sCodes"

