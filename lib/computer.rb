require "game"
require "player"

class Computer
  attr_reader :coputer_choice

  def choice
    @computer_choice = Game::CHOICES.sample
  end
end
