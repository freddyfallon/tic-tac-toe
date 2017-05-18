require 'game'
describe Game do
  let(:player_1) { object_double(Player.new("X")) }
  let(:player_2) { object_double(Player.new("O")) }
  let(:board) { object_double(Board.new) }
  subject(:game) {described_class.new(player_1: player_1, player_2: player_2, board: board)}

  context 'at instatiation' do
    describe '#player_1' do
      it 'should be equal to player_1 at instantiation' do
        expect(game.player_1).to eq player_1
      end
    end
    describe '#player_2' do
      it 'should be equal to player_2 at instantiation' do
        expect(game.player_2).to eq player_2
      end
    end

    describe '#board' do
      it 'should be equal to board at instantiation' do
        expect(game.board).to eq board
      end
    end
  end

end
