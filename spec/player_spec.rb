require 'player'

describe Player do
  let(:player) { described_class.new("John") }

  describe 'player name' do
    it 'returns name' do
      expect(player.name).to eq "John"
    end
  end 
end
