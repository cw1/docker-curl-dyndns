# docker-curl-dyndns

## Usage
Simple run the following command:
```
docker run --name "dyndns" -e INTERVAL_TIME="300" -e DYN_DNS_URL="https://example.com" -e CURL_PARAM="--insecure" cw1900/docker-curl-dyndns 
```

or use docker-compose:
```
version: '2'
services:
  dyndns:
    container_name: dyndns
    image: cw1900/docker-curl-dyndns
    restart: always
    environment:
    - DYN_DNS_URL=https://example.com
    - CURL_PARAM=--insecure
    - INTERVAL_TIME=300
```
 
## Parameters

### DYN_DNS_URL (required):
The URL which get triggered by curl.

### INTERVAL_TIME (optional):
Interval time between checks of changes of the external ip address in seconds. Default is 300.
 
### CURL_PARAM (optional):
Optional parameters for cURL (no output will be logged!).
