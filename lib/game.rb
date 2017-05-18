require_relative 'board'
require_relative 'player'
class Game
  attr_reader :player_1, :player_2, :board, :current_turn
  def initialize(args)
    @player_1 = args[:player_1]
    @player_2 = args[:player_2]
    @board = args[:board]
    @current_turn = @player_1
  end

  def play(value)
    self.board.grid[value] = current_turn.mark
    change_turn
  end

  def change_turn
    current_turn == player_1 ? self.current_turn = player_2 : self.current_turn = player_1
  end

  private
  attr_writer :board, :current_turn

end
