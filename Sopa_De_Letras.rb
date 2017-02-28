#.ljust ajusta la cadena de sólo si el argumento es > a string.length     # "hello".ljust(20, "123")   #=> "hello123412341234123"
class Board
	@@boards_templates = [["MANGO", "SANDIA", "MELON","PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
	@@soup = Array.new(8) { Array.new(0) } # CREATE a multidimensional array of 8 row's
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
		@@soup #RETURN soup

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
#puts board
