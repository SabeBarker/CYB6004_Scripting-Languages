#!/bin/bash

# Find lines that contain a sed command
SED=$(grep -r "sed\s*-" ../)
# Find lines that start with a letter M (case insensitive)
MLINES=$(grep -ir "^m*/i" ../)
#  Find lines that contain three digit numbers
DIGITS=$(grep -Er "\b[0-9]{3}\b" ../)
# Find lines that contain echo statements with at least three words 
ECHO=$(grep -Er 'echo\s*(\S+[ \t]+){2}\S+\b[^\d\W]+\b' ../)
# Find lines that would make a good password - since we wouldn't want plain text passwords on the system lets look for sha256 hashes 
PASSWD=$(grep -Er "^.{64}$" ../)