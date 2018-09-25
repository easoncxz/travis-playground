#!/usr/bin/env bash

set -x  # echo on
set -e  # fail fast

PREP_FILE="$1"

hostname
ls -ahl "$PREP_FILE"
ls -ahl
echo "Pretend we're doing a deploy here."
