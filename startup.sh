#!/bin/sh

# Check if DYN_DNS_URL is set
if [ -z "$DYN_DNS_URL" ]; then
  echo "Variable DYN_DNS_URL has to be set!"
  exit 1
fi

# Check if INTERVAL_TIME is set
if [ -z "$INTERVAL_TIME" ]; then
  echo "Variable INTERVAL_TIME is set to 300"
  INTERVAL_TIME=300
fi

old_ip=""
# Infinite loop
while true; do
  current_ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
  if ! [ "$current_ip" = "$old_ip" ]; then
    curl -s $CURL_PARAM $DYN_DNS_URL > /dev/null 2>&1
    old_ip="$current_ip"
    echo -n "DynDNS is updated to $current_ip on "; date
  fi
  sleep $INTERVAL_TIME
done
