load "board.rb"
# load "display.rb"
# load "cursor.rb"
# load 'rook.rb'
# load 'bishop.rb'
load 'queen.rb'
# load "slidingpiece.rb"
queen = Queen.new(:white, Board.new, [3,3])
p queen.moves
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
