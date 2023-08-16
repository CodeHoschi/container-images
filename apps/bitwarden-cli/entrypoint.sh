#!/bin/bash

set -e

/app/bw config server ${BW_HOST}

export BW_SESSION=$(/app/bw login ${BW_USER} --passwordenv BW_PASSWORD --raw)

/app/bw unlock --check

echo 'Running `bw server` on port 8087'
/app/bw serve --hostname 0.0.0.0 #--disable-origin-protection