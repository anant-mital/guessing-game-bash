#!/usr/bin/env bash
# File: guessinggame.sh
# Description: 
#              
# This script prompts the user to guess the number of files in the current dir. If user's
# guess is correct he/she is congratulated. Otherwise they are informed whether their estimate
# is high or low. The programme does not terminate till the user does not input the correct 
# number of files.


function guessfilecount {

    # Calculate number of files in the current working directory
    filecount=$(ls -la|grep "^-"|wc -l)
    guess=-1
    while [[ $guess -ne filecount ]]
    do
        echo "Guess how many files are in current directory ? "
        read guess
        if [[ $guess -eq filecount ]]
            then
            echo "Congratulations, your guess is correct."
            break
        fi
        if [[ $guess -gt filecount ]]
            then
            echo "Guess is too high !" 
        else
            echo "Guess is too low !"
        fi

    done
}

guessfilecount
