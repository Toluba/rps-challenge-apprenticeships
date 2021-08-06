require "player"

describe Player do
  subject(:player) { Player.new("Tomi") }

  describe "#name" do
    it "returns the name" do
      expect(player.name).to eq "Tomi"
    end
  end
end
