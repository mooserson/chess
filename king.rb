require_relative 'piece'
require_relative 'steppingpiece'

class King < Piece

  include SteppingPiece
  attr_reader :symbol

  def initialize(color, board, pos)
    @symbol = color == :white ? SYMBOLS[:white_king] : SYMBOLS[:black_king]
    super(color, board, pos)
  end

  def move_key
    :king
  end
end
