require_relative 'piece'
require_relative 'steppingpiece'

class Pawn < Piece

  include SteppingPiece
  attr_reader :symbol

  def initialize(color,board, pos)
    @symbol = color == :white ? SYMBOLS[:white_pawn] : SYMBOLS[:black_pawn]
    super(color,board,pos)
  end

  def move_key
    color == :white ? :white_pawn : :black_pawn
  end

# TODO:
  # def valid_pawn_moves(moves)
  #   valid_moves = []
  #   moves.each do |pos|
  #     if @pos[0] == pos[0]
  #       valid_moves << pos if @board[pos].empty?
  #     else
  #       valid_moves << if @board[pos].color != self.color
  #     end
  #   end
  #   valid_moves
end
