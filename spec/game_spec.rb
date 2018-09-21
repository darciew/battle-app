require 'game'

describe Game do
  let(:pokemon) { described_class.new(tom, andy) }
  let(:rubbish_game) { described_class.new(bad_player, andy) }

  let(:tom) {double :player, reduce_hp: nil, hit_points: 10 }
  let(:andy) { double :player2, reduce_hp: nil, hit_points: 10 }
  let(:bad_player) { double :player3, hit_points: 0 }


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

  describe '#turn_switcher' do
    it 'switches players from player 1 to player 2' do
      pokemon.turn_switcher
      expect(pokemon.turn).to eq andy
    end
    it 'switches players from player 1 to player 2 back to player 1' do
      pokemon.turn_switcher
      pokemon.turn_switcher
      expect(pokemon.turn).to eq tom
    end
  end

  describe 'game #is_over' do
    it 'returns false if neither player has 0 HP' do
      expect(pokemon.is_over?).to eq false
    end

    it 'returns true if a player wins' do
      expect(rubbish_game.is_over?).to eq true
    end
  end
end
