require 'game'

describe Game do
  let(:jade) { double('Jade', attack:'' ) }
  let(:lubos) { double('Lubos', get_damaged:'') }
  subject(:game) {described_class.new(jade, lubos)}

  describe '#player1' do
    it 'has a player stored in its player1 variable' do
      expect(game.player1).to eq jade
    end
  end

  describe '#player2' do
    it 'has a player stored in its player1 variable' do
      expect(game.player1).to eq jade
    end
  end

  describe '#attack' do
    it "attacks the opponent" do
      expect(lubos).to receive(:get_damaged)
      game.attack(lubos)
    end
  end

end
