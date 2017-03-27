class Sudoku

  def initialize(string)
    @values = string
    @eighty_one_grids = Array.new(9){Array.new(9)} #Initialize 2D array with 81 empty grids (nx = 9, ny = 9)
    @value =[]
    @copy_original_array = Array.new(9){Array.new(9)}
  end

  def solve!
    #Fill in some empty grid with the known values
    @eighty_one_grids[0]
    @value = @values.split(//)
    values_index = 0
      for nx in 0..8
        for ny in 0..8
          value_integer = @value[values_index].to_i #asignar cada valor del string de valores conocidos a una variable local "value_integer"
          @copy_original_array[nx][ny] = value_integer
          @eighty_one_grids[nx][ny] = value_integer #asignamos el value_integer a cada indice nx, ny del arreglo multidimencional
           values_index +=1
        end
      end
      grid = @eighty_one_grids[0][1]
      columna = []
      fila = []
      cuadro = []
      convinaciones = []
      for i in 0..8
        columna << @eighty_one_grids[i][1]
      end
      convinaciones << columna
      @eighty_one_grids[0].each do |f|
        fila << f
      end
      convinaciones << fila
      cuadro << @eighty_one_grids[0][0..2]
      cuadro << @eighty_one_grids[1][0..2]
      cuadro << @eighty_one_grids[2][0..2]
      convinaciones<<cuadro
      convinaciones.flatten!
      convinaciones.uniq!
      convinaciones.sort!
      algo = nil
      posibilidades = []
      for i in 1..9
        algo = convinaciones.include? (i)
        posibilidades << i if algo == false
      end
      p posibilidades
  end

  def board

  end
end
#'702806519100740230005001070008000002610204053200000100070400800064078005821503907'
game = Sudoku.new('702806519100740230005001070008000002610204053200000100070400800064078005821503907')

 game.solve!
#
# puts game.board
