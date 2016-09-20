require_relative 'piece'
require_relative 'steppingpiece'

# TODO:
# include SteppingPiece

class King < Piece

  KING_MOVES = {
    left: [0, -1],
    right: [0, 1],
    up: [-1, 0],
    down: [1, 0],
    diag_up_r: [-1,1],
    diag_up_l:[-1,-1],
    diag_down_r: [1,1],
    diag_down_l: [1,-1]
  }

  attr_reader :symbol

  def initialize(color, board, pos)
    @symbol = color == :white ? SYMBOLS[:white_king] : SYMBOLS[:black_king]
    super(color, board, pos)
  end

  def move_diffs
    return KING_MOVES.values
  end
end
