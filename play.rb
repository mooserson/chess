load "board.rb"
load 'display.rb'

b1 = Board.new
d1 = Display.new(b1)
d1.render
# load "slidingpiece.rb"
# pawn = Pawn.new(:white, Board.new, [3,3])
# p pawn.moves
#
# load "null_piece.rb"
# load "piece.rb"

# d = Display.new(Board.new);
# d.render;



#
# def handle_key(key)
#   case key
#   when :return || :space
#     p "cursor_pos"
#   when :left || :right || :up || :down
#     p key
#     nil
#   when :ctrl_c
#     exit
#   end
# end
