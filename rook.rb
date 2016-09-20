require_relative 'piece'
require_relative 'slidingpiece'

# TODO:
# include SlidingPiece

class Rook < Piece
  def initialize(color,board,pos)
    @symbol = color == :white ? SYMBOLS[:white_rook] : SYMBOLS[:black_rook]
    super(color,board,pos)
  end
  def move_dirs
    [:up,:left,:right,:down]
  end
end
