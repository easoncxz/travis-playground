#!/usr/bin/env bash

set -x  # echo on
set -e  # fail fast

PREP_FILE="$1"

if [ $# -eq 0 ]
then
    echo "Usage: $0 PREP_FILE"
    exit 1
fi

pwd
hostname
ls -ahl
cat "$PREP_FILE"
echo "Pretend we're doing a deploy here."

echo "$MY_ENV"
