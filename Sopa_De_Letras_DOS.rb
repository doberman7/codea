#.ljust ajusta la cadena de sólo si el argumento es > a string.length     # "hello".ljust(20, "123")   #=> "hello123412341234123"
#[["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
#[["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
#[["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]
class Board
	@@boards_templates = #.ljust ajusta la cadena de sólo si el argumento es > a string.length     # "hello".ljust(20, "123")   #=> "hello123412341234123"
	#[["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
	[["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
	#[["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]
	@@soup = Array.new(8) { Array.new(0) } # CREATE a multidimensional array of 8 row's

	def made_soup
		strg = @@boards_templates [1]# ASSGIN the boards_templates[-1] to a variable
		place_inner_array = 0 # ASSIG a variable for to being use for the next loop
		init = 0# ASSIGN a variable to  index[0] for tha iner array
		final = 4# ASSIGN a variable to  index[-1] for the iner array
		until final >= strg.length# START the loop that create's array's of 4 element each time, stops until "final" >= 40
			@@soup [place_inner_array][0] = strg[init..final] #ASSIGN in the "soup" the inner array of 4 elements
			init+=5 # ADD 5 to the index[0] of inner array
			final+=5 # ADD 5 to the index[-1] of inner array
			place_inner_array += 1 #ADD 1 to the index of the soup
		end
		@@soup
	end

	def find_up_down
		word = @@boards_templates [0][1]#CANCION
		vertical = ""
		index_move = 0
		until vertical.include? word #HASTA que vertical incuya la palabra buscada
			@@soup.each_with_index do |array , fila|#separar arreglo multidimensional de 8*5
				 vertical << array[0][index_move] #empujar de cada elemento 0 de las filas en vertical
	 		end# string con loetras de columna creado
				index_move+=1  # se avanza en el index de las columnas
				vertical #retorno implicito
		end
	end

	def find_left_to_rigth
		word = @@boards_templates [0][0]#MANGO
		horizontal = ""
		index_move = 0
				@@soup.each_with_index do |fila, index_f|#multidimensional so
					 fila.join
					 if fila.include? word
						 horizontal = fila.join
					 end
				end
				p horizontal
	end


  def initialize
	 	complete_board!
  end

  def to_s
	  "try to print a board, what does this method do?"
  end

  private

  def complete_board!
	 		 #Este método debe rellenar un tablero incompleto, en otras palabras cambiar las "x" por letras random.
  end
end

board = Board.new
board.made_soup
board.find_left_to_rigth
