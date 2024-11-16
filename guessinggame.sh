#!/bin/bash

# Function to get the number of files in the current directory
function get_file_count {
    echo $(ls -1 | wc -l)
}

# Actual number of files
file_count=$(get_file_count)

echo "Welcome to the Guessing Game!"
echo "Guess how many files are in the current directory:"

while true; do
    read -p "Enter your guess: " guess

    if [[ $guess -eq $file_count ]]; then
        echo "Congratulations! You guessed it right."
        break
    elif [[ $guess -lt $file_count ]]; then
        echo "Too low! Try again."
    else
        echo "Too high! Try again."
    fi
done
