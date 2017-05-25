require 'game'

describe Game do

  let(:jade) { double('Jade', attack:'' ) }
  let(:lubos) { double('Lubos', get_damaged:'') }

  describe '#attack' do
    it "attacks the opponent" do
      expect(lubos).to receive(:get_damaged)
      jade.attack(lubos)
    end
  end

end
