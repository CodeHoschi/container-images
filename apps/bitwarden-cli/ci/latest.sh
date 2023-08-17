#!/usr/bin/env bash
# this only get the latest web version
# version=$(curl -sX GET "https://api.github.com/repos/bitwarden/clients/releases/latest" | jq --raw-output '.tag_name' 2>/dev/null)
version="cli-v2023.7.0"
version="${version#*v}"
version="${version#*release-}"
version="${version%_*}"
printf "%s" "${version}"
