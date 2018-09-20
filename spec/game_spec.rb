require 'game'

describe Game do
  let(:pokemon) { described_class.new(player1, player2) }

  let(:player1) {double :people, reduce_hp: nil }
  let(:player2) { double :pikachu, reduce_hp: nil }
  # let(:player1) { double :pikachu, reduce_hp: nil }

  describe '#attack' do
    it 'reduces another players hp by 10' do
      pokemon.attack(player2)
      expect(player2).to have_received(:reduce_hp)
    end
    it 'reduces another players hp by 10' do
      pokemon.attack(player1)
      expect(player1).to have_received(:reduce_hp)
    end
  end
end
