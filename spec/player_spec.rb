require 'player'

describe Player do
  let(:player1) { described_class.new("John") }
  let(:player2) { described_class.new("Jim") }


  describe 'player name' do
    it 'returns name' do
      expect(player1.name).to eq "John"
    end
  end

  describe 'reduce_hp' do
    it 'reduces a players HP by 10' do
      srand(4000)
      player1.reduce_hp
      expect(player1.hit_points).to eq 44
    end
  end
end
