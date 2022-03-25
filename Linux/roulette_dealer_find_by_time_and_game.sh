#!/bin/bash

echo "Roulette Dealer on $1 at $2 for game: $3"

grep "$2" "$1_Dealer_schedule" |
if [[ $3 = "BlackJack" ]]
then
        awk -F" " '{print($3, $4)}'
elif [[ $3 = "Roulette" ]]
then
        awk -F" " '{print($5, $6)}'
elif [[ $3 = "Texas_Hold_EM" ]]
then
        awk -F" " '{print($7, $8)}'
else
        echo "Couldn't find that game type: $3"
        echo "Please enter either [BlackJack, Roulette, Texas_Hold_EM]"
fi
