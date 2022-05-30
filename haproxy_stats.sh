#!/bin/bash
echo "this script will summarize and export relevant haproxy stats for fast reference"

echo "what is the name of the stats file you wish to review? for best results run this script in the folder containing the file you want to query"
read HAPROXY_STATS

echo "what is the route you wish to grep for? Insert string"
read ROUTE

#LBTOT value count per pod:
echo "lbtot values -- note that these are UNIQUE values and if cookies ar3 enabled will not increment after initial hit for that client"
echo "================================================================="
cat $HAPROXY_STATS | sed 's/|/ /' | awk '{print $2, $26}' | grep $ROUTE
echo "================================================================="

echo "" 

#HTTP response values:
echo "HTTP response values 1xx, 2xx, 3xx, 4xx, 5xx totals"
echo "=================================================================="
cat $HAPROXY_STATS | sed 's/|/ /' | awk '{print $2, $32, $33, $34, $35, $36}' | grep $ROUTE
echo "================================================================="
