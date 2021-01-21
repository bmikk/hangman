


module Messages

  #WELCOME_MESSAGE
  def welcome_message
    puts "---------- Welcome to Hangman! ----------"
  end

  #NAME_MESSAGE
  def name_message
    puts "What is your name?"
  end

  #ACTION_PROMPT_MESSAGE
  def action_message
    puts "What would you like to do? Input a number 1-4 to make a choice."
    puts "1 - Attempt to guess a letter."
    puts "2 - Attempt to guess the full word."
    puts "3 - Save the game."
    puts "4 - Quit the game."
  end

  #GET_LETTER_GUESS MESSAGE
  def letter_guess_message
    puts "Time to guess! Choose any letter."
  end

  #GET_WORD_GUESS MESSAGE
  def word_guess_message
    puts "Give it a shot! Guess the full word."
  end

  #GUESS_CORRECT_MESSAGE
  def guess_correct_message
    puts "That's right! You guessed correctly!"
  end

  #GUESS_INCORRECT_MESSAGE
  def guess_incorrect_message
    puts "Wrong!"
  end

  #BOARD_DISPLAY MESSAGE

  #PLAYER_WIN MESSAGE
  def player_win_message
    puts "#{player_name} wins! Great job!"
  end

  #PLAYER_LOSE MESSAGE
  def player_lose_message
    puts "#{player_name} loses! Better luck next time!"
  end



end