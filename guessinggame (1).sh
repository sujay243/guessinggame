#!/usr/bin/env bash
# File: guessinggame.sh

function get_file_count {
  echo $(ls -1 | wc -l)
}

correct_count=$(get_file_count)
guess=-1

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

while [[ $guess -ne $correct_count ]]
do
  read -p "Enter your guess: " guess

  if [[ $guess -lt $correct_count ]]
  then
    echo "Your guess is too low. Try again!"
  elif [[ $guess -gt $correct_count ]]
  then
    echo "Your guess is too high. Try again!"
  else
    echo "🎉 Congratulations! You guessed correctly: $correct_count files."
  fi
done
