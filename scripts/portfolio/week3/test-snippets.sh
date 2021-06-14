#!/bin/bash

BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[32m'
BROWN='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
GREY='\e[37m'
ENDCOLOUR='\e[0m'

echo -e "${BLACK}BLACK${ENDCOLOUR}"
echo -e "${RED}RED${ENDCOLOUR}"
echo -e "${GREEN}GREEN${ENDCOLOUR}"
echo -e "${BROWN}BROWN${ENDCOLOUR}"
echo -e "${BLUE}BLUE${ENDCOLOUR}"
echo -e "${PURPLE}PURPLE${ENDCOLOUR}"
echo -e "${CYAN}CYAN${ENDCOLOUR}"
echo -e "${GREY}GREY${ENDCOLOUR}"

case $var in
    {testitems} )
        # code if match
        ;;
    {testitems} )
        # code if match
        ;;
    {testitems} )
        # code if match
        ;;
    *) # default case
        code if default case
        ;;
esac