#!/usr/bin/env bash

if [[ $# -lt 1 ]]; then
  echo missing content
  exit 1
fi

MESSAGE="$1"

if [[ $# -eq 2 ]]; then
  CHANNEL="$2"
else
  CHANNEL="@ben"
fi

curl -X POST -H 'Content-type: application/json' \
  --data "{\"text\":\"${MESSAGE}\", \"channel\":\"${CHANNEL}\"}" \
  #<add slack hook url here>

echo
