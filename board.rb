require_relative 'piece.rb'
require_relative 'null_piece.rb'
require 'byebug'
#board class
class Board
attr_accessor :grid
  def initialize
    @grid = Array.new(8) { Array.new(8) { NullPiece.instance } }
    # populate_grid
  end

  def [](*pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(*pos,value)
    x,y = pos
    @grid[x][y] = value
  end

  def move(start, end_pos)
    # TODO cover move exceptions
    self[*end_pos] = self[*start]
    self[*start] = NullPiece.new
  end

  def in_bounds(pos)
    # debugger
    if pos.all? { |el| el.between?(0,7) }
      return true
    end
    false
  end
end
