require "player"

describe Player do
  subject(:player) { Player.new("Tomi") }

  describe "#name" do
    it "returns the name" do
      expect(player.name).to eq "Tomi"
    end
  end

  describe "#choice" do
    it "puts the players choice into an instance variable" do
      player.move("Rock")
      expect (player.choice).to eq "Rock"
    end
  end
end
