require_relative 'slidingpiece'
require_relative 'piece'

class Queen< Piece
  include SlidingPiece

  def initialize(color, board, pos)
    @symbol = color == :white ? SYMBOLS[:white_queen] : SYMBOLS[:black_queen]
    super(color, board, pos)
  end

  def move_dirs
    [:straight, :diagonal]
  end


end
