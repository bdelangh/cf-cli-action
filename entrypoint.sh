#!/bin/sh -l

echo "Hello from Test"
pwd
cf --help
#cf api "$INPUT_CF_API"
#cf auth "$INPUT_CF_USERNAME" "$INPUT_CF_PASSWORD"

#if [ -n "$INPUT_CF_ORG" ] && [ -n "$INPUT_CF_SPACE" ]; then
#  cf target -o "$INPUT_CF_ORG" -s "$INPUT_CF_SPACE"
#fi

cf login -u "$INPUT_CF_USERNAME" -p "$INPUT_CF_PASSWORD" -a "$INPUT_CF_API" -o "$INPUT_CF_ORG" -s "$INPUT_CF_SPACE"

sh -c "cf $*"