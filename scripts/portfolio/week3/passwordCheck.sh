#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
ENDCOLOUR="\e[0m"

# Get password input from user
read -sp $'\e[31mEnter password:\e[0m ' passwordInput
echo
# Create hash of users entered password
inputHash=$(echo "$passwordInput" | sha256sum | cut -d' ' -f1)
# Find path to secret.txt
passwordFile="$(find . -name "secret.txt")"
# check input with password in secrets.txt
Password="$(cat $passwordFile)"
# Check users password hash matches stored hash
if [[ "$inputHash" == "$Password" ]]; then
    echo -e "${GREEN}Access Granted!${ENDCOLOUR}"
    exit 0
else
    echo -e "${RED}Access Denied!${ENDCOLOUR}"
    exit 1
fi
