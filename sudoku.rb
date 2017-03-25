class Sudoku

  def initialize(string)
    @values = string
    @eighty_one_grids = Array.new(9){Array.new(9)} #Initialize 2D array with 81 empty grids (nx = 9, ny = 9)
    @value =[]
    @copy_original_array = []
  end

  def solve!
    #Fill in some empty grid with the known values
    @eighty_one_grids[0]
    @value = @values.split(//)
    values_index = 0
      for nx in 0..8
        for ny in 0..8
          value_integer = @value[values_index].to_i #asignar cada valor del string de valores conocidos a una variable local "value_integer"
          #value_integer = nil if value_integer == 0 #SI el valor convertido en entero es "0", significa que esta vacio
          @eighty_one_grids[nx][ny] = value_integer #asignamos el value_integer a cada indice nx, ny del arreglo multidimencional
           values_index +=1
        end
      end

    @copy_original_array = @eighty_one_grids #Make an original copy of the array
      #@eighty_one_grids[row][column]
      #@eighty_one_grids[  nx  ][ ny]
      #values => ('702806519100740230005001070008000002610204053200000100070400800064078005821503907'
      #p @eighty_one_grids[  0  ][ 2]
      #Start from top left grid (nx = 0, ny = 0), check if grid is empty
      row = 0
      counter = 0
      for nx in 0..8
        for ny in 0..8
          counter +=1
          p @eighty_one_grids[nx][ny]
          p @eighty_one_grids[row]
          if counter % 9 == 0
            p "---------------------------"
            @eighty_one_grids[row]
            row += 1
          end
        end
      end
      #p @eighty_one_grids
  end

  def board

  end
end
#'702806519100740230005001070008000002610204053200000100070400800064078005821503907'
game = Sudoku.new('702806519100740230005001070008000002610204053200000100070400800064078005821503907')

 game.solve!
#
# puts game.board
