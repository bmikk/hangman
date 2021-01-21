
require_relative "./board.rb"
require_relative "./messages.rb"
require_relative "./serialization.rb"

class Game

  include Messages
  include Serialization

  def initialize(player_name)
    @player_name = player_name
    @master_word = get_word()
    @board = Board.new(master_word)
  end

  def letter_guess
    #get a letter guess from the player
    #compare that guess to the master word
      #if that letter does not appear in the master word:
        #display a miss message
        #decrement the remaining attempts counter
        #add the guessed letter the the list of missed guesses
      #if the letter does appear in the word:
        #display a guess_correct message
        #find all instances of it in the master word and replace the blanks in the corresponding display
  end

  def word_guess
    #get a word guess from the player
    #if the guess is correct:
      #display the win message
      #end the game
    #else:
      #display a guess_incorrrect message
  end

  def #SAVE_GAME METHOD
  end

  def display_board
    puts board.word
    puts board.misses
    puts board.remaining_attempts
  end



end