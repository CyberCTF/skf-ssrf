#!/bin/sh
# /check_existence validates the URL it is asked to fetch.
set -e
H=http://web:5000
curl -fsS --data-urlencode "url=not-a-url" "$H/check_existence" | grep -q "The URL schema is not valid"
