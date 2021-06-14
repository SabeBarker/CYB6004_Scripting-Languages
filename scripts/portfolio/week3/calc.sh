#!/bin/bash

# Set option variable to 0 to enter while loop
OPTION=0

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

# Display banner
figlet CALC
echo "  A Basic Bash Calculator"
echo

while [ true  ]; do
    # Display menu
    echo "###############################"
    echo "#       CALCULATOR MENU       #"
    echo "###############################"
    echo -e "${BLUE}1. Addition${ENDCOLOUR}"
    echo -e "${GREEN}2. Subtraction${ENDCOLOUR}"
    echo -e "${RED}3. Multiplication${ENDCOLOUR}"
    echo -e "${PURPLE}4. Division${ENDCOLOUR}"
    echo -e "${GREY}5. Exit${ENDCOLOUR}"

    # Request menu selection from user
    read -p "Choose an option [1-5]: " OPTION
    echo

    # Request numbers for calculation
    if [ "$OPTION" -ne 5 ]; then
        read -p "Enter a number: " NUM1
        read -p "Enter another number: " NUM2
    fi

    case $OPTION in
        1)
            # Addition
            ANSWER=$(($NUM1+$NUM2))
            echo
            echo -e "${BLUE}$ANSWER${ENDCOLOUR}"
            echo
            sleep 3
            ;;
        2)
            # Subtraction
            ANSWER=$(($NUM1-$NUM2))
            echo
            echo -e "${GREEN}$ANSWER${ENDCOLOUR}"
            echo
            sleep 3
            ;;
        3)
            # Multiplication
            ANSWER=$(($NUM1*$NUM2))
            echo
            echo -e "${RED}$ANSWER${ENDCOLOUR}"
            echo
            sleep 3
            ;;
        4)
            # Division
            ANSWER=$(awk "BEGIN {printf \"%.2f\n\", $NUM1/$NUM2}")
            echo
            echo -e "${PURPLE}$ANSWER${ENDCOLOUR}"
            echo
            sleep 3
            ;;
        5)
            # Exit menu
            echo "Goodbye!"
            exit 0
            ;;

        *) 
            # Inform user of invalid input
            echo "Invalid menu option! Please try again..."
            echo
            ;;
    esac
done