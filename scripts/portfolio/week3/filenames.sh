#!/bin/bash

# Loop through each line in file
for LINE in $(cat $1)
do
    # Check if line is a file that exists
    if [[ -f $LINE ]]; then
        echo "$LINE - That file exists"
    # Check if line is a directory
    elif [[ -d $LINE ]]; then
        echo "$LINE - That’s a directory"
    # If not file or directory print message
    else
        echo "$LINE - I don’t know what that is!"
    fi
done