#!/bin/sh -l

echo "Hello from Test"
pwd
#cf api "$INPUT_CF_API"
#cf auth "$INPUT_CF_USERNAME" "$INPUT_CF_PASSWORD"

#if [ -n "$INPUT_CF_ORG" ] && [ -n "$INPUT_CF_SPACE" ]; then
#  cf target -o "$INPUT_CF_ORG" -s "$INPUT_CF_SPACE"
#fi

echo $HOME
echo $USER_HOME
echo $USER

echo "Logging in to CF"
cf login -u "$INPUT_CF_USERNAME" -p "$INPUT_CF_PASSWORD" -a "$INPUT_CF_API" -o "$INPUT_CF_ORG" -s "$INPUT_CF_SPACE"
echo "... Logged in to CF"

echo "Executing command"
sh -c "cf $*"
echo "... command executed"