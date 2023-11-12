#!/bin/ash

# Function to check if input is a valid integer
function isValid {
    local re='^[0-9]+$'
    if ! [[ $1 =~ $re ]] ; then
       return 1
    else
       return 0
    fi
}

# Request input
echo "Enter a number between 0 and 255 to be used as the exit code: "
read input

# Validate the input and exit with the provided code if it's an integer
if isValid "$input" && [ "$input" -ge 0 -a "$input" -le 255 ] ; then
    exit "$input"
else
    echo "Invalid input. Exiting with code 1."
    exit 1
fi
