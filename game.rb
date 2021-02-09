
require_relative "./board.rb"
require_relative "./messages.rb"
require_relative "./serialization.rb"

class Game

  attr_reader :master_word, :player_name
  attr_accessor :board

  include Messages
  include Serialization

  def initialize(player_name = 'Player')
    @player_name = player_name
    @master_word = get_word()
    @board = Board.new(@master_word)
    @remaining_attempts = 6
    @game_over = false
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
        board.blank_word = local_letters.join('')
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
    guess == @master_word ? player_win : guess_incorrect_message
  end

  def player_lose?
    if @remaining_attempts < 1
      player_lose_message
      @game_over = true
      #end the game
    end
  end

  def player_win
    player_win_message(@player_name)
    @game_over = true
  end

  def player_turn
    display_board
    choice = action_prompt()
    if choice == "1"
      letter_guess
    elsif choice == "2"
      word_guess
    elsif choice == "3"
      save_game(self)
    elsif choice == "4"
      #quit the game
    else
      puts "Something went wrong."
    end
  end

  def play
    puts "Let's play, #{@player_name}! Here we go!"
    while @remaining_attempts > 0 do
      player_turn()
      @game_over == true ? break : next
    end
  end

  def play_again?
    puts "Would you like to play again? [Y/N]"
    input = gets.chomp
    input.downcase == "y" ? true : false
  end

end