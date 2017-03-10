class Sudoku

  def initialize(string)
    @values = string
    @eighty_one_grids = Array.new(9){Array.new(9)} #Initialize 2D array with 81 empty grids (nx = 9, ny = 9)
    @value =[]
    @copy_original_array = []
  end
  #values => ('702806519100740230005001070008000002610204053200000100070400800064078005821503907'
  def solve!
    #Fill in some empty grid with the known values
    @eighty_one_grids[0]
    @value = @values.split(//)
    values_index = 0
      for nx in 0..8
        for ny in 0..8
           @eighty_one_grids[nx][ny] = @value[values_index].to_i
           values_index +=1
        end
      end
      @copy_original_array = @eighty_one_grids #Make an original copy of the array
      #@eighty_one_grids[column][row]
      #@eighty_one_grids[  nx  ][ ny]
      ny = 0
      nx = 0
      #Start from top left grid (nx = 0, ny = 0), check if grid is empty
        #if (grid is empty) {
        if @eighty_one_grids[nx][ny] == 0
          #    assign the empty grid with values (i)
          
          #    if (no numbers exists in same rows & same columns same as (i) & 3x3 square (i) is currently in)
          #      fill in the number
          #    if (numbers exists in same rows | same columns same as (i) | 3x3 square (i) is currently in)
          #      discard (i) and repick other values (i++)
          #  }
          #  else {
          #    while (nx < 9) {
          #      Proceed to next row grid(nx++, ny)
          #      if (nx equals 9) {
          #        reset nx = 1
          #        proceed to next column grid(nx,ny++)
          #        if (ny equals 9) {
          #          print solution
          #        }
          #      }
          #    }
          #  }
        end
  end

  def board

  end
end

game = Sudoku.new('702806519100740230005001070008000002610204053200000100070400800064078005821503907')

 game.solve!
#
# puts game.board
