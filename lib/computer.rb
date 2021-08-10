require_relative 'game'
require_relative 'player'

class Computer
  attr_reader :computer_choice

  def choice
    @computer_choice = Game::CHOICES.sample
  end
end
