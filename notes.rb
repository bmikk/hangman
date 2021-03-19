

#basic game logic should be:

#ask if player would like to load a previous save.
#otherwise, start a new game.
#display the game board. That should include:
  #blanks representing every character not yet guessed
  #every missed attempted guess
  #a graphical hangman?
#ask what the player would like to do:
  # 1 - Guess a letter
  # 2 - guess the full word
  # 3 - save the game
  # 4 - quit the game
  #if 2, let the player input a guess.
    #if correct, player wins
    #if not, ask if player would like to guess again. 
    #repeat until player indicates they no longer want to make full guesses.
#begin letter guessing logic:
  #ask the player for a letter to attempt a guess.
  #if player guess letter appears in master word,
    #replace blanks in the game board display with the guessed letter in the correct positions
  #else,
    #add the attempted letter to the list of missed guesses, and record the guess against the running tally.
  #then, if the tally has reached the limit, the player loses.
  #else, repeat the turn process starting from the prompt asking if the player would like to guess the word.


#classes? Remember, use a class when an element IS something, and use a module when an element HAS something
  #Game? Need to make a new game object, so yes.
    #includes: display, logic, SaveGame?, LoadGame?,
  #[something to do with reading the file?]
  #[something to do with saving the game?]
  #display?
  #logic?

      #start with a welcome message
    #ask for the player's name
    #if previous saved games are detected, ask if the player would like to load a previous game.
      #if yes, load that game.
      #else, start a new game:

    #new game: Initialize a new game instance using the player's name.
      #also initialize with a computer word choice

    #display a start message
    #display the current game board, which should include:
      #blanks representing all un-guessed characters, with correct guesses represented in their correct positions.
      #each character that has already been guessed
      #maybe a number representing how many incorrect guesses are left that can be guessed?
    #ask if what the player would like to do:
      # 1 - guess a letter
        #run a turn, and prompt again after a letter guess
      # 2 - attempt to guess the full word
        # no limit on guesses. If incorrect, prompt again.
      # 3 - save the game
        # save the game and prompt again
      # 4 - quit the game
        # exit the program.