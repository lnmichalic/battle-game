require "player"

describe Player do

  subject(:player) {described_class.new("Jade")}

  describe '#name' do
    it "gives the players name" do
      expect(player.name).to eq "Jade"
    end
  end
end
