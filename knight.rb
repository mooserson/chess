require_relative 'steppingpiece'
require_relative 'piece'
class Knight < Piece

  include SteppingPiece
  attr_reader :symbol

  def initialize(color, board, pos)
    @symbol = color == :white ? SYMBOLS[:white_knight] : SYMBOLS[:black_knight]
    super(color, board,pos)
  end

  def move_key
    :knight
  end
end
