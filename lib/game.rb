require_relative 'board'
require_relative 'player'
class Game
  attr_reader :player_1, :player_2, :board, :current_turn, :game_over
  def initialize(args)
    @player_1 = args[:player_1]
    @player_2 = args[:player_2]
    @board = args[:board]
    @current_turn = @player_1
    @game_over = false
  end

  def play(value)
    self.board.grid[value] = current_turn.mark
    check_score
    change_turn if game_over == false
  end

  def change_turn
    if current_turn == player_1
      self.current_turn = player_2
    else
      self.current_turn = player_1
    end
  end

  def check_score
    if (board.grid[0] == player_1.mark && board.grid[1] == player_1.mark && board.grid[2] == player_1.mark) || (board.grid[3] == player_1.mark && board.grid[4] == player_1.mark && board.grid[5] == player_1.mark) || (board.grid[6] == player_1.mark && board.grid[7] == player_1.mark && board.grid[8] == player_1.mark) || (board.grid[0] == player_1.mark && board.grid[3] == player_1.mark && board.grid[6] == player_1.mark) || (board.grid[1] == player_1.mark && board.grid[4] == player_1.mark && board.grid[7] == player_1.mark) || (board.grid[2] == player_1.mark && board.grid[5] == player_1.mark && board.grid[8] == player_1.mark)
      self.game_over = true
      puts "Player 1 wins!"
    elsif (board.grid[0] == player_2.mark && board.grid[1] == player_2.mark && board.grid[2] == player_2.mark) || (board.grid[3] == player_2.mark && board.grid[4] == player_2.mark && board.grid[5] == player_2.mark) || (board.grid[6] == player_2.mark && board.grid[7] == player_2.mark && board.grid[8] == player_2.mark) || (board.grid[0] == player_2.mark && board.grid[3] == player_2.mark && board.grid[6] == player_2.mark) || (board.grid[1] == player_2.mark && board.grid[4] == player_2.mark && board.grid[7] == player_2.mark) || (board.grid[2] == player_2.mark && board.grid[5] == player_2.mark && board.grid[8] == player_2.mark)
      self.game_over = true
      puts "Player 2 wins!"
    end
  end

  private
  attr_writer :board, :current_turn, :game_over

end
