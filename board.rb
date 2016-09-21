require_relative 'piece.rb'
require_relative 'null_piece.rb'
require_relative 'rook.rb'
require_relative 'knight.rb'
require_relative 'bishop.rb'
require_relative 'king.rb'
require_relative 'queen.rb'
require_relative 'pawn.rb'

require 'byebug'
#board class
class Board
attr_accessor :grid
  def initialize
    @grid = Array.new(8) { Array.new(8) { NullPiece.instance } }
    populate_board
  end

  def [](*pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(*pos,value)
    x,y = pos
    @grid[x][y] = value
  end
# popluate black
  def populate_board
    # debugger
    @grid[0].each_with_index do |space,index|
      if index == 0 || index == 7
        self[0,index] = Rook.new(:black, self, [0,index])
      end

      if index == 1 || index == 6
        self[0,index] = Knight.new(:black, self, [0,index])
      end

      if index == 2 || index == 5
        self[0,index] = Bishop.new(:black, self, [0,index])
      end

      if index == 3
          self[0,index] = King.new(:black, self, [0,index])
      elsif index == 4
          self[0,index] = Queen.new(:black, self, [0,index])
      end
    end
# poplate white
# debugger
    @grid[7].each_with_index do |space,index|
      if index == 0 || index == 7
        self[7,index] = Rook.new(:white, self, [7,index])
      end

      if index == 1 || index == 6
        self[7,index] = Knight.new(:white, self, [7,index])
      end

      if index == 2 || index == 5
        self[7,index] = Bishop.new(:white, self, [7,index])
      end

      if index == 3
          self[7,index] = King.new(:white, self, [7,index])
      elsif index == 4
          self[7,index] = Queen.new(:white, self, [7,index])
      end
    end

  end

  def move(start, end_pos)
    self[*end_pos] = self[*start]
    self[*start] = NullPiece.new
  end

  def in_bounds?(pos)
    pos.all? do |el|
      el.between?(0,7)
    end
  end

end
