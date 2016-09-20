require 'byebug'
# straight : left, right, up, down
# diag : up_r, up_l, down_l, down_r
DIFFS = {
  :straight =>  [[0, -1], [0, 1],[-1, 0], [1, 0]],
  :diagonal => [[-1,-1], [-1, 1], [1, -1], [1,1]]
}

module SlidingPiece
  def moves
    possible_moves = {}
    move_dirs.each do |dir|
      possible_moves[dir] = get_positions(dir)
    end

    possible_moves
  end

  def get_positions(dir)
    # debugger
    diffs = DIFFS[dir]
    positions = []

    diffs.each do |diff|
      new_pos = @pos.dup
      current_dir = []
      while @board.in_bounds?(new_pos)
        current_dir << new_pos.dup unless new_pos == @pos
        new_pos[0] += diff[0]
        new_pos[1] += diff[1]
      end
      positions << current_dir
    end
    positions
  end



end
