#!/usr/bin/env bash

#shellcheck disable=SC1091
test -f "/scripts/umask.sh" && source "/scripts/umask.sh"
test -f "/scripts/greeting.sh" && source "/scripts/greeting.sh"
test -f "/scripts/sleep.sh" && source "/scripts/sleep.sh" 1 5

bw config server ${BW__HOST}

export BW_SESSION=$(bw login ${BW__USER} --passwordenv BW__PASSWORD --raw)

bw unlock --check

echo 'Running `bw server` on port 8087'
bw serve --hostname 0.0.0.0 #--disable-origin-protection