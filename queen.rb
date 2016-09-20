require_relative 'slidingpiece'
require_relative 'piece'

# include SlidingPiece

class Queen

  def initialize(color, board, pos)
    @symbol = color == :white ? SYMBOLS[:white_queen] : SYMBOLS[:black_queen]
    super(color, board, pos)
  end

  def move_dirs
    [:up, :down, :left, :right, diag_up_r:,
    diag_up_l:, :diag_down_l, :diag_down_r]
  end


end
