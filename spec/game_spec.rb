require 'game'

describe Game do
  let(:pokemon) { described_class.new(tom, andy) }

  let(:tom) {double :player, reduce_hp: nil }
  let(:andy) { double :player, reduce_hp: nil }
  # let(:player1) { double :pikachu, reduce_hp: nil }

  describe 'player1' do
    it 'should return the player1 object' do
      expect(pokemon.player1).to eq tom
    end
  end

  describe 'player2' do
    it 'should return the player2 object' do
      expect(pokemon.player2).to eq andy
    end
  end

  describe '#attack' do
    it 'reduces another players hp by 10' do
      pokemon.attack(andy)
      expect(andy).to have_received(:reduce_hp)
    end
    it 'reduces another players hp by 10' do
      pokemon.attack(tom)
      expect(tom).to have_received(:reduce_hp)
    end
  end
end
