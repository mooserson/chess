require_relative 'slidingpiece'
require_relative 'piece'

class Bishop < Piece
  include SlidingPiece

  def initialize(color, board, pos)
    @symbol = color == :white ? SYMBOLS[:white_bishop] : SYMBOLS[:black_bishop]
    super(color, board, pos)
  end

  def move_dirs
    [:diagonal]
  end
end
