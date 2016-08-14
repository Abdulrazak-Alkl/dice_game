# dice_game

## Game rules

1. The game contains N players. 
2. Each player will have N dice in their dice cup.
3. Each round all players will roll their dice at the same time.
4. All dice with number 1 on top side will be passed to player on his right hand (the right most player will pass the dice to left most player)
5. All dice with number 6 on top side will be removed from their dice cup.
6. All players roll their dice again to start next round.
7. The player who first emptied their dice cup (could be more than 1 player) is winner(s).

## Run Game

``` shell
# run the game for 6 dices and 4 players
ruby simulate.rb 6 "Abdul Henry John Bob"
```
