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

    describe '#play' do
      context 'Players and boards have grid and marks' do
        before do
          allow(game.board).to receive(:grid).and_return(
          ["", "", "", "", "", "", "", "", ""])
          allow(game.player_1).to receive(:mark).and_return('X')
          allow(game.player_2).to receive(:mark).and_return('O')
        end
        it 'should change board value to X for player_1' do
          game.play(0)
          expect(game.board.grid[0]).to eq 'X'
        end

        it 'should change board value to X for player_2' do
          game.play(0)
          game.play(1)
          expect(game.board.grid[1]).to eq 'O'
        end
      end
    end
  end

  describe '#change_turns' do
    it 'should change from player_1 to player_2' do
      game.change_turn
      expect(game.current_turn).to eq(player_2)
    end

    it 'should change from player_2 to player_1' do
      game.change_turn
      game.change_turn
      expect(game.current_turn).to eq(player_1)
    end
  end

end
