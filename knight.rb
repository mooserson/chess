require_relative 'steppingpiece'
require_relative 'piece'
class Knight < Piece

#TODO: 
# include steppingpiece

  KNIGHT_MOVES = {
    up_r: [-2,1],
    up_l: [-2,-1],
    left_up: [-1,-2]
    left_down: [1,-2]
    right_up: [-1,2]
    right_down: [1,2]
    down_right: [2,1]
    down_left: [2,-1]
  }
  attr_reader :symbol

  def initialize(color, board, pos)
    @symbol = color == :white ? SYMBOLS[:white_knight] : SYMBOLS[:black_knight]
    super(color, board,pos)
  end

  def move_diffs
    return KNIGHT_MOVES.values
  end
end
