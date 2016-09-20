require_relative 'piece.rb'
require_relative 'null_piece.rb'

class Board
attr_accessor :grid
  def initialize
    @grid = Array.new(8) { Array.new(8) }
    populate_grid
  end

  def [](*pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(*pos,value)
    x,y = pos
    @grid[x][y] = value
  end

  def populate_grid
    @grid.each_with_index do |row, i|
      row.each_with_index do |space, j|
        self[i,j] = NullPiece.new
      end
    end
    self[0,4] = Piece.new
    grid
  end

  def move(start, end_pos)
    # TODO cover move exceptions
    self[*end_pos] = self[*start]
    self[*start] = NullPiece.new
  end

  def in_bounds(pos)
    if pos.all? { |el| el.between?(0,8) }
      return true
    end
    false
  end
end
