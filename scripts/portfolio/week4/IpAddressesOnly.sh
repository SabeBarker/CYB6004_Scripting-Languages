#!/bin/bash

#Only parse lines that contain "IP Address" using sed

ipinfo=$(bash IpInfo.sh)

echo "$ipinfo" | sed -n '/IP Address/p'