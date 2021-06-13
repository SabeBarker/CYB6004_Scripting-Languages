#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
ENDCOLOUR="\e[0m"

option=0

# Ask for password to access menu
Access="$(bash passwordCheck.sh)"
# Check whether access is granted
if [ $? -eq 0 ]; then
    # Print access message
    echo "$Access"
    while [ $option -ne 4  ]; do
        # Display menu
        echo "1. Create a folder"
        echo "2. Copy a folder"
        echo "3. Set a password"
        echo "4. Exit"
        # Get menu option from user
        read -p "Choose an option [1-4] " option

        case $option in

            1)
              bash foldermaker.sh
              ;;
            2)
              bash foldercopier.sh
              ;;
            3)
              bash setPassword.sh
              ;;
            4)
	      echo "Exiting..."
              exit 0
              ;;
            *)
              echo "Invalid Option! Please try again..."
        esac
    done
else
    # Print access message
    echo
    echo -e "${RED}Access Denied!${ENDCOLOUR}"
fi
