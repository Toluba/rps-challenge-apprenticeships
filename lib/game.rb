require_relative 'computer'
require_relative 'player'

class Game
  CHOICES = ["Rock", "Paper", "Scissors"]
  attr_reader :player, :computer, :player_choice, :computer_choice

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def winner
    if @player.choice == @computer.computer_choice
      "It's a draw"
    elsif (@player.choice == "paper" && @computer.computer_choice == "rock") || (@player.choice == "rock" && @computer.computer_choice == "scissors")
      puts "'#{@player.name}' wins"
    elsif (@player.choice == "scissors" && @computer.computer_choice == "paper")
      puts "'#{@player.name}' wins"
    elsif (@player.choice == "paper" && @computer.computer_choice == "scissors") || (@player.choice == "rock" && @computer.computer_choice == "paper")
      puts "Computer wins"
    elsif (@player.choice == "scissors" && @computer.computer_choice == "rock")
      puts "Computer wins"
    end
  end
end
