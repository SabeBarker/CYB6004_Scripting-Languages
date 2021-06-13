#!/bin/bash

read -p "Type name of folder to create: " folderName

while [[ "$folderName" == "$(cat foldername.txt)" ]]; do
    read -p "That folder name is reserved. Please choose another: " folderName
done

if [  -d "$folderName" ]; then
    rm -rf "$folderName"
    mkdir "$folderName"
else
    mkdir "$folderName"
fi

exit 0
