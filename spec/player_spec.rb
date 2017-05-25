require "player"

describe Player do

  subject(:jade) {described_class.new("Jade")}
  subject(:lubos) {described_class.new("Lubos")}

  describe '#name' do
    it "gives the players name" do
      expect(jade.name).to eq "Jade"
    end
  end

  describe '#HP' do
    it "gives the players HP" do
      expect(jade.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe '#get_damaged' do
    it "should deduct 10 points from HP" do
      expect {lubos.get_damaged}.to change {lubos.hp}.by(-10)
    end
  end
end
