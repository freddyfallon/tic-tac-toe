require_relative 'board'
require_relative 'player'
class Game
  attr_reader :player_1, :player_2, :board
  def initialize(args)
    @player_1 = args[:player_1]
    @player_2 = args[:player_2]
    @board = args[:board]
  end

  def play(value)
    self.board[value] = value
  end

  private
  attr_writer :board

end
