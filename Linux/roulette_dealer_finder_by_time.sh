#!/bin/bash

echo "Roulette Dealer on $1 at $2:"
grep "$2" "$1_Dealer_schedule" | awk -F" " '{print($5, $6)}'
