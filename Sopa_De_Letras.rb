#.ljust ajusta la cadena de sólo si el argumento es > a string.length     # "hello".ljust(20, "123")   #=> "hello123412341234123"
#[["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
#[["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
#[["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]
class Board
	@@boards_templates = [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
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

	def find
		word_to_find = @@boards_templates [0][1]#=>CANCION
		first_letter = word_to_find[0]#C
		mixed_letters = @@boards_templates [1]#=>"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"
		index_fid_wrd = 0
		until mixed_letters [index_fid_wrd] == first_letter#loop para encontrar primera letra
			 index_fid_wrd += 1
		end
	 	 finded_word = "" << mixed_letters [index_fid_wrd]#ASSIGN first letter of finded in the soup
		 counter = 0
		 until counter == word_to_find.length - 1
		 		finded_word << mixed_letters [index_fid_wrd+=5]
				counter+=1
		 end
		 	p word_to_find == finded_word ? true : false;

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
#puts board
 board.find
