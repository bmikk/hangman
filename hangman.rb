
  require 'yaml'
  require_relative "messages"
  require_relative "game"

module Hangman

    include Messages

    puts ""
    puts ""    
    puts "---------- Welcome to Hangman! ----------"
    puts ""
    puts "What is your name?"
    puts ""
    name = gets.chomp
    puts "Hello #{name}!"
    puts "Would you like to load a previous game? Y/N"
    input = gets.chomp

    if input.downcase == "y"
      #play the game with a loaded save
      puts "Which game would you like to load? Input the file name."
      filename = gets.chomp
      puts "Loading file..."
      if File.exist?(filename)
        #load the file
        game = YAML.load(File.read(filename))
        game.play
      else
        puts "Oops! Looks like that file doesn't exist. Let's play a new game instead."
        game = Game.new(name)
        game.play
      end
    else
      game = Game.new(name)
      game.play
    end
    while game.play_again?
      game = Game.new(name)
      game.play
    end 


    


end