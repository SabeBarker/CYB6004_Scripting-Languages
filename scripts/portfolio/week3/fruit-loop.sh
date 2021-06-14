#!/bin/bash

# Create array of fruit
FRUIT=("Apple" "Mango" "Strawberry" "Orange" "Banana")

# Loop through array
for i in ${FRUIT[@]}; do
    # Print each fruit in array
    echo "FRUIT: $i"
done