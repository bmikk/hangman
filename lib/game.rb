
require_relative "./board.rb"
require_relative "./messages.rb"
require_relative "./serialization.rb"

class Game

  attr_reader :master_word
  attr_accessor :board

  include Messages
  include Serialization

  def initialize(player_name = 'Player')
    @player_name = player_name
    @master_word = get_word().downcase
    @board = Board.new(@master_word)
    @remaining_attempts = 6
  end

  def action_prompt
    action_message
    action = gets.chomp
    if !("1".."4").include?(action)
      puts "Invalid selection! Try again."
      action = action_prompt
    end
    action
  end

  def letter_guess
    letter_guess_message
    guess = gets.chomp
    local_letters = board.blank_word.chars.map { |char| char == ' ' ? next : char }
    if master_word.include?(guess)
      guess_correct_message
      master_word.clone.chars.each_with_index do |master_char, master_index|
        if master_char == guess
          local_letters[master_index] = guess
        end
        board.blank_word = local_letters.join(' ')
      end
    else
      guess_incorrect_message
      board.misses << guess
      @remaining_attempts -= 1
      player_lose?
    end
  end

  def word_guess
    word_guess_message
    guess = gets.chomp
    if guess.downcase == master_word.downcase
      player_win
    else
      guess_incorrect_message
    end
  end

  def player_lose?
    if @remaining_attempts < 1
      player_lose_message
      #end the game
    end
  end

  def player_win
  end

  def player_turn
    display_board
    choice = action_prompt()
    if choice == "1"
      letter_guess
    elsif choice == "2"
      word_guess
    elsif choice == "3"
      #Save the game
    elsif choice == "4"
      #quit the game
    else
      puts "Something went wrong."
    end
  end

  def display_board
    puts "The Master Word is... #{@master_word}"
    #display_message
    puts board.blank_word
    puts ""
    puts "So far, you have guessed #{board.misses}"
    puts "You have #{@remaining_attempts} remaining attempts."
  end

  def play
    while @remaining_attempts > 0 do
      player_turn()
    end
  end



end