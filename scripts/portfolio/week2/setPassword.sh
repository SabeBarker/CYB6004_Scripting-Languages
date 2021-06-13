#!/bin/bash

# Delete old password
oldPassword="$(cat foldername.txt)"
if [ -d "$oldPassword" ]; then
    rm -rf "$oldPassword"
fi

# Get folder name input from user
read -p "Enter folder name: " folderName
if [ ! -d "$folderName" ]; then
    mkdir "$folderName"
fi
# Store folder name used
echo "$folderName" > foldername.txt
# Get password input from user
read -sp "Enter secret password: " secretPass
# Add extra line space for clarity
echo
# Output secret password hash in to a file
echo "$secretPass" | sha256sum | cut -d' ' -f1 > $folderName/secret.txt

exit 0
