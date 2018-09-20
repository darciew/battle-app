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
      player1.reduce_hp
      expect(player1.hit_points).to eq 40
    end
  end

  describe 'attack' do
    it 'reduces another players hp by 10' do
      player1.attack(player2)
      expect(player2.hit_points).to eq 40
    end
    
    it 'reduces another players hp by 20' do
      player1.attack(player2)
      player1.attack(player2)
      expect(player2.hit_points).to eq 30
    end
  end
end
