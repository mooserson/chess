
DIFFS = {
  :king => [[0, -1],[0, 1],[-1, 0],[1, 0],[-1,1],[-1,-1],[1,1],[1,-1]],
  :knight => [[-2,1],[-2,-1],[-1,-2],[1,-2],[-1,2],[1,2], [2,1], [2,-1]],
  :white_pawn => [[1,0],[1,-1],[1,1]],
  :black_pawn => [[-1,0],[-1,-1],[-1,1]]
}



module SteppingPiece
  def moves
    possible_moves = []
    possible_moves = get_positions(move_key)

    possible_moves
  end

  def get_positions(key)
    # debugger
    diffs = DIFFS[key]
    positions = []

    diffs.each do |diff|
      new_pos = @pos.dup
      new_pos[0] += diff[0]
      new_pos[1] += diff[1]
      if @board.in_bounds?(new_pos)
        positions << new_pos.dup
      end
    end
    positions
  end

  def get_valid_moves
    possible_moves = moves
    possible_moves.delete_if do |pos|
      @board[pos].color == @color
    end
  end

end
