require_relative 'piece.rb'
require_relative 'null_piece.rb'
class Board
attr_accessor :grid
  def initialize
    @grid = Array.new(8) { Array.new(8) }
    populate_grid
  end

  def populate_grid
    @grid.each_with_index do |row, i|
      row.each_with_index do |space, j|
        grid[i][j] = NullPiece.new
      end
    end
    @grid[0][4] = Piece.new
    grid
  end

  def render
    @grid.each_with_index do |row,i|
      row.each_with_index do |space,j|
        print @grid[i][j].value
      end
      puts
    end
  end

end
