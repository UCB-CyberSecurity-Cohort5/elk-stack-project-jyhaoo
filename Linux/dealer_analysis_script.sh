#!/bin/bash
# Script for Dealer Analysis that would grab time, a.m./p.m., first name of roulette dealer and last name of roulette dealer

echo "March 15th dealers for Roulette: " > Dealers_working_during_losses
grep 0315 ../Player_Analysis/Roulette_Losses | awk -F" " '{print($1, $2)}' | sed s/0315_win_loss_player_data:// | grep -f - 0315_Dealer_schedule | awk -F" " '{print($1, $2, $5, $6)}' >> Dealers_working_during_losses.txt
echo " " >> Dealers_working_during_losses
echo "March 12th dealers for Roulette:  " >> Dealers_working_during_losses
grep 0312 ../Player_Analysis/Roulette_Losses | awk -F" " '{print($1, $2)}' | sed s/0312_win_loss_player_data:// | grep -f - 0312_Dealer_schedule | awk -F" " '{print($1, $2, $5, $6)}' >> Dealers_working_during_losses.txt
echo " " >> Dealers_working_during_losses
echo "March 10th dealers for Roulette: " >> Dealers_working_during_losses
grep 0310 ../Player_Analysis/Roulette_Losses | awk -F" " '{print($1, $2)}' | sed s/0310_win_loss_player_data:// | grep -f - 0310_Dealer_schedule | awk -F" " '{print($1, $2, $5, $6)}' >> Dealers_working_during_losses.txt
