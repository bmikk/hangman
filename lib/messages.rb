


module Messages

  #WELCOME_MESSAGE
  def welcome_message
    puts "---------- Welcome to Hangman! ----------"
    puts ""
  end

  #NAME_MESSAGE
  def name_message
    puts "What is your name?"
    puts ""
  end

  #ACTION_PROMPT_MESSAGE
  def action_message
    puts "What would you like to do? Input a number 1-4 to make a choice."
    puts "1 - Attempt to guess a letter."
    puts "2 - Attempt to guess the full word."
    puts "3 - Save the game."
    puts "4 - Quit the game."
    puts ""
  end

  #GET_LETTER_GUESS MESSAGE
  def letter_guess_message
    puts "Time to guess! Choose any letter."
    puts ""
  end

  #GET_WORD_GUESS MESSAGE
  def word_guess_message
    puts "Give it a shot! Guess the full word."
    puts ""
  end

  #GUESS_CORRECT_MESSAGE
  def guess_correct_message
    puts "That's right! You guessed correctly!"
    puts ""
  end

  #GUESS_INCORRECT_MESSAGE
  def guess_incorrect_message
    puts "Wrong!"
    puts ""
  end

  #BOARD_DISPLAY MESSAGE
  def display_board
    puts "The Master Word is... #{@master_word}"
    #display_message
    display_blank_word
    puts ""
    puts "Your incorrect guesses are #{board.misses}"
    puts ""
    puts "You have #{@remaining_attempts} remaining misses before losing the game."
    puts ""
  end

  def display_blank_word
    word = board.blank_word.chars.join(' ')
    puts word
  end

  #PLAYER_WIN MESSAGE
  def player_win_message(name)
    puts "#{name} wins! Great job!"
    puts ""
  end

  #PLAYER_LOSE MESSAGE
  def player_lose_message
    puts "#{player_name} loses! Better luck next time!"
    puts ""
  end



end