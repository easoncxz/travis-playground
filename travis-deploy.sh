#!/usr/bin/env bash

set -x  # echo on
set -e  # fail fast

PREP_FILE="$1"

if [ $# -eq 0 ]
then
    echo "Usage: $0 PREP_FILE"
    exit 1
fi

hostname
ls -ahl "$PREP_FILE"
ls -ahl
echo "Pretend we're doing a deploy here."

echo "$MY_ENV"
