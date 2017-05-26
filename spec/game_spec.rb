require 'game'

describe Game do
  let(:jade) { double('Jade', attack: '', hp: 60) }
  let(:lubos) { double('Lubos', get_damaged: '', hp: 60) }
  subject(:game) { described_class.new(jade, lubos) }

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
    it 'attacks the opponent' do
      expect(lubos).to receive(:get_damaged)
      game.attack(lubos)
    end
  end

  describe '#active?' do
    it 'returns true if both players HP is not 0' do
      expect(game.active?).to be true
    end

    it 'returns false if a player reaches 0 HP' do
      allow(jade).to receive(:hp).and_return 0
      expect(game.active?).to be false
    end
  end
end
