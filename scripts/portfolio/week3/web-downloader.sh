#!/bin/bash

# Example image used for download: https://hatrabbits.com/wp-content/uploads/2017/01/random.jpg

# Enter while loop
while [[ true ]];
do
    # Request URL from user
    read -p "Please type the URL of a file to download or type 'exit' to quit: " URL
    if [[ $URL != "exit" ]]; then
        # Request location to download to
        read -p "Type the location of where you would like to download the file to: " LOCATION
        # Download file to location specified
        wget --no-check-certificate --content-disposition ''"$URL"'' -P $LOCATION 
    else
        # Exit loop
        echo "Goodbye!"
        exit 0
    fi
done

    