require 'colorize'
require_relative 'cursor'
require_relative 'board'
require 'byebug'
class Display
  attr_accessor :cursor, :cursor_pos, :board

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    puts
    board.grid.each_with_index do |row,i|

      row.each_with_index do |space,j|
        if @cursor.cursor_pos == [i,j]
          print board[i,j].symbol.colorize(:blue)
        else
        print " #{board[i,j].symbol} "
        end
      end
      puts
    end
  end

  # # cursor move test
  # def display_board
  #   while true
  #   render
  #   @cursor.get_input
  #   @cursor.cursor_pos
  #   end
  # end

end
