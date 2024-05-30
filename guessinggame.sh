#!/bin/bash

function guess_files {
    local num_files=$(ls -1 | wc -l)
    local user_guess=-1

    echo "Guess the number of files in the current directory:"

    while [[ $user_guess -ne $num_files ]]; do
        read user_guess
        if [[ $user_guess -lt $num_files ]]; then
            echo "Your guess is too low. Try again:"
        elif [[ $user_guess -gt $num_files ]]; then
            echo "Your guess is too high. Try again:"
        else
            echo "Congratulations! You guessed the correct number of files."
        fi
    done
}

guess_files
