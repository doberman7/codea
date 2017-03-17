@@ -7,6 +7,7 @@ class Sudoku
    @copy_original_array = []
  end
  #values => ('702806519100740230005001070008000002610204053200000100070400800064078005821503907'

  def solve!
    #Fill in some empty grid with the known values
    @eighty_one_grids[0]
@@ -14,45 +15,53 @@ class Sudoku
    values_index = 0
      for nx in 0..8
        for ny in 0..8
           @eighty_one_grids[nx][ny] = @value[values_index].to_i
          value_integer = @value[values_index].to_i #asignar cada valor del string de valores conocidos a una variable local "value_integer"
          value_integer = nil if value_integer == 0 #SI el valor convertido en entero es "0", significa que esta vacio
          @eighty_one_grids[nx][ny] = value_integer #asignamos el value_integer a cada indice nx, ny del arreglo multidimencional
           values_index +=1
        end
      end
      @copy_original_array = @eighty_one_grids #Make an original copy of the array

      p @copy_original_array = @eighty_one_grids #Make an original copy of the array
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
      for nx in 0..8
        for ny in 0..8
          #if (grid is empty) {
          if @eighty_one_grids[nx][ny] == 0
            #    assign the empty grid with values (i)
            for i in 1..9
              @eighty_one_grids[0][0] = i
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
        end
      end
  end

  def board

  end
end

#'702806519100740230005001070008000002610204053200000100070400800064078005821503907'
game = Sudoku.new('702806519100740230005001070008000002610204053200000100070400800064078005821503907')

game.solve!
