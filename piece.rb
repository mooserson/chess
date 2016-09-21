class Piece

  SYMBOLS = {
    #white symbols
    :white_king => "\u2654",
    :white_queen => "\u2655",
    :white_rook => "\u2656",
    :white_bishop => "\u2657",
    :white_knight => "\u2658",
    :white_pawn => "\u2659",
    #black symbols
    :black_king => "\u265A",
    :black_queen => "\u265B",
    :black_rook => "\u265c",
    :black_bishop => "\u265d",
    :black_knight => "\u265e",
    :black_pawn => "\u265f",
  }

  attr_reader :symbol, :color
  attr_accessor :pos
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def valid_moves?
    self.get_valid_moves
  end


end
