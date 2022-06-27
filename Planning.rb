# Nouns for  Classes:
  # Players
      # Will hold the data and names of the players. State of players will alternate between 1 and 2 depending on which player's turn it is. Will manage which player_turn it is. 

  # Lives
      # Will hold the data for how many lives each player has left. This class will be connected to the question and player classes, in order to recalculate accordingly as players take turns/get questions right or wrong 

  # Question
      # Generated each turn by picking two numbers between 1 and 20. This question will prompt the player's response. 

  # Turn
      # Will alternated between player 1 and player 2, based on who answered the previous question. The turns will run/alternate until one of the players has lost all of their lives, at which point the turn will switch to GAME OVER and announce other players score. This is the class which will contain the game loop 