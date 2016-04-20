# docker-curl-dyndns

## Usage
 Simple run the following command:
 ```
 docker run --name "dyndns" -e INTERVAL_TIME="300" -e DYN_DNS_URL="https://example.com" -e CURL_PARAM="--insecure" cw1900/docker-curl-dyndns 
 ```
 
## Parameters
 
### INTERVAL_TIME (optional):
Set the interval time between polling in seconds. Default is 300.
 
### DYN_DNS_URL (required):
The URL which getting pulled by curl.
 
### CURL_PARAM (optional):
Optional parameters for cURL.
