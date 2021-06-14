#!/bin/bash

# Set bash colour variables
BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[32m'
BROWN='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
GREY='\e[37m'
ENDCOLOUR='\e[0m'

# Set option variable to 0 to enter while loop
option=0

# Ask for password to access menu
Access="$(bash passwordCheck.sh)"
# Check whether access is granted
if [ $? -eq 0 ]; then
    # Print access message
    echo "$Access"
    while [ $option -ne 4  ]; do
        # Display menu
        echo -e "${CYAN} 1. Create a folder"
        echo -e " 2. Copy a folder"
        echo -e " 3. Set a password"
        echo -e " 4. Calculator"
        echo -e " 5. Create Week Folders"
        echo -e " 6. Check Filenames"
        echo -e " 7. Download a File${ENDCOLOUR}"
        echo -e " 8. Exit"
        # Get menu option from user
        read -p $'\e[34mSelect an option [1-8]\e[0m ' option

        case $option in

            1)
	      # Execute folder maker script
              bash foldermaker.sh
              ;;
            2)
              # Execute folder copier script
              bash foldercopier.sh
              ;;
            3)
              # Execute set password script
              bash setPassword.sh
              ;;
            4)
              # Execute set password script
              bash calc.sh
              ;;
            5)
              # Execute set password script
              bash megafoldermaker.sh
              ;;
            6)
              read -p "Enter filename [filenames.txt]: " FILENAMES
              # Execute set password script
              bash filenames.sh $FILENAMES
              ;;
            7)
              # Execute set password script
              bash web-downloader.sh
              ;;
            8)
              # Exit menu
	          echo "Exiting..."
              exit 0
              ;;
            *)
              # Inform user of invalid input
              echo "Invalid Option! Please try again..."
        esac
    done
else
    # Print access message
    echo
    echo -e "$Access"
fi