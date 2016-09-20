require_relative 'piece'
require_relative 'slidingpiece'

class Rook < Piece
  include SlidingPiece

  def initialize(color,board,pos)
    @symbol = color == :white ? SYMBOLS[:white_rook] : SYMBOLS[:black_rook]
    super(color,board,pos)
  end
  def move_dirs
    [:straight]
  end
end
