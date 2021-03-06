#!/bin/bash

echo "Google Server IPs:"

awk 'BEGIN {
    FS=":";
    print "================================";
    print "| \033[34mServer Type\033[0m | \033[34mIP Address\033[0m     |";
    print "================================";

}

{
    printf("| \033[33m%-11s\033[0m | \033[35m%-14s\033[0m |\n", $1, $2);
}

END {
    print("================================");
}' input.txt
