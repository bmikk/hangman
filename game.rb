
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

  def action_prompt
    action_message
    action = gets.chomp
    if action != /'[1-4]'/

  def letter_guess
    letter_guess_message
    guess = gets.chomp
    local_letters = board.word.chars
    if master_word.include? guess
      guess_correct_message
      master_word.clone.chars.each_with_index do |master_char, master_index|
        if master_char == guess
          local_letters[master_index] = guess
        end
        board.word = local_letters.join('')
      end
    else
      guess_incorrect_message
      board.misses << guess
      board.remaining_attempts -= 1
      player_lose?
    end
  end

  def word_guess
    word_guess_message
    guess = gets.chomp
    if guess == master_word
      player_win
    else
      guess_incorrect_message
    end
  end

  def player_lose?
    if board.remaining_attempts < 1
      player_lose_message
      #end the game
    end
  end

  def player_win
  end

  def player_turn

  end

  def display_board
    #display_message
    puts board.word
    puts board.misses
    puts board.remaining_attempts
  end

  def play

  end



end