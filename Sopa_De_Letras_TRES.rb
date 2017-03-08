class Board
	@@boards_templates = #.ljust ajusta la cadena de sólo si el argumento es > a string.length     # "hello".ljust(20, "123")   #=> "hello123412341234123"
	[["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
	#[["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
	#[["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]
	@@soup = Array.new(8) { Array.new(0) } # CREATE a multidimensional array of 8 row's
	@@pre_soup = ""
	def initialize
	 	complete_board!
		find_diagonal_derecha_izquieda
		find_diagonal_izquierda_derecha
		find_up_down
		find_down_up
		find_left_to_rigth
		find_rigth_to_left
		to_s
  end


	def made_soup #para crear  sopa
		strg = @@pre_soup# ASSGIN the boards_templates[-1] to a variable
		place_inner_array = 0 # ASSIG a variable to be use for the next loop
		init = 0# ASSIGN a variable to  index[0] for tha iner array
		final = 4# ASSIGN a variable to  index[-1] for the iner array
		until final >= strg.length# START the loop that create's array's of 4 element each time, stops until "final" >= 40
			@@soup [place_inner_array][0] = strg[init..final] #ASSIGN in the "soup" the inner array of 4 elements
			init+=5 # ADD 5 to the index[0] of inner array
			final+=5 # ADD 5 to the index[-1] of inner array
			place_inner_array += 1 #ADD 1 to the index of the soup
		end
	 	#self  # permitir method chaining
	end  # cerrar metodo "hacer sopa"
	def made_soup_reverse #para crear sopa inversa antes de la matriz multidimensional
		strg = @@boards_templates [1].reverse# ASIGNAR the string with forty letters reversed to strg
		place_inner_array = 0 # ASSIG a variable to be use for the next loop
		init = 0# ASSIGN a variable to  index[0] for tha iner array
		final = 4# ASSIGN a variable to  index[-1] for the iner array
		until final >= strg.length# START the loop that create's array's of 4 element each time, stops until "final" >= 40
			@@soup [place_inner_array][0] = strg[init..final] #ASSIGN in the "soup" the inner array of 4 elements
			init+=5 # ADD 5 to the index[0] of inner array
			final+=5 # ADD 5 to the index[-1] of inner array
			place_inner_array += 1 #ADD 1 to the index of the soup
		end
	end

	def find_up_down #busqueda  de arriba hacia abajo
		made_soup# invocar metod que hace sopa con string en el orden dado
		@@boards_templates [0].each do |word|# iterar a tràves de cada palabra
			vertical = ""#variable para colocar columnas
			index_move = 0#variable para avanzar a tràves de las columnas
			result_up_down = nil#resultado del metodo, vacio si no se encuentra la palabra
			until index_move >= @@soup[0][0].length#loop hasta que index_move sea >= al largo de una las filas
				vertical = "" #vertical es limpiado cada loop
				@@soup.each_with_index do |array , fila|#separar arreglo multidimensional "sopa"
					  vertical << array[0][index_move] #empujar de cada elemento 0 de los arreglos para crear las columnas
		 		end# string con letras de columna creado
			  result_up_down = vertical if vertical.include? word #SI vertical incluye la palabra buscada, vertical es igual a resultado
				index_move+=1  # se avanza en el index de las columnas
			end
		  p "#{word} encontrada de arriba hacia abajo" if result_up_down != nil #SI result_up_down no esta vacio se imprime resultado
		end
	end

	def find_down_up
		made_soup
		inverted_board = []
		@@soup.reverse.each_with_index do |ary,ind|
			 inverted_board << ary.join.reverse  # invertir tablero de izquierda a derecha
		end
		@@boards_templates [0].each do |word|# iterar en palabras buscadas
			vertical = ""
			index_move = 0
			resul_down_up = nil
				until index_move >= @@soup[0][0].length
					vertical = ""
					inverted_board.each_with_index do |array , fila|#separar arreglo multidimensional de 8*5
					 vertical << array [index_move] #empujar de cada elemento 0 de las filas en vertical
		 			end# string con loetras de columna creado
					 index_move +=1#p index_move+=1  # se avanza en el index de las columnas
					 resul_down_up = vertical if vertical.include? word
				end
				 p "#{word} encontrada de abajo hacia arriba" if resul_down_up!=nil
		end
	end #busqueda de abajo hacia arriba

	def find_left_to_rigth
		made_soup
		@@boards_templates [0].each do |word|# iterar en palabras buscadas
			result_left_to_rigth = nil
					@@soup.each_with_index do |fila, index_f|#multidimensional so
						 fila.join
						 if fila.include? word
							 result_left_to_rigth = fila.join
						 end
					end
			p "#{word} encontrada de izquierda a derecha" if result_left_to_rigth != nil #SI result_up_down no esta vacio se imprime resultado
		end
	end # busqueda de izquierda a derecha

	def find_rigth_to_left
		made_soup
		inverted_board = []#arreglo para ingresar tablero invertido
		@@boards_templates [0].each do |word|# iterar en palabras buscadas
			result_rigth_to_left = nil #variable que devolverà el resultado
			@@soup.reverse.each_with_index do |ary,ind|
				  inverted_board << ary.join.reverse  # invertir tablero de izquierda a derecha
			end
			 		inverted_board.each_with_index do |fila, index_f|#multidimensional invertido separado por fila e indice, el cual recorre todas las filas
						  if fila.include? word#SI una fila incluye la palabra buscada
						 	 result_rigth_to_left = fila # asignar la fila a "resultado"
						  end
			 		end
			  p "#{word} encontrada de derecha a izquierda" if result_rigth_to_left != nil #SI result_up_down no esta vacio se imprime resultado
		end
	end#busqueda de derecha a izquierda
#-------------------------------BUSQUEDA DIAGONAL
	def find_diagonal_izquierda_derecha
		made_soup
		# @@soup [row]  [outer_array] [column]
		# @@soup [1]     [0]           [1]
		@@boards_templates [0].each do |word|# iterar en palabras buscadas
				result = nil #variable para colocar resultado si la palabra es colocada
				index_move = 0 #variable para moverse a tràves de las columnas
				index_row = 0 #indice de la fila
				index_column = 0 #indice de columna
				#TRANSEVERSAL HACIA ARRIBA
				until index_move >= @@soup[0][0].length #hasta que el indice alcance la longitud del la sopa
					transversal = []#arreglo para
					 transversal << one = @@soup [index_row][0][index_column]
					 transversal << two = @@soup [index_row+=1][0][index_column+=1]
					 transversal << three = @@soup [index_row+=1][0][index_column+=1]
					 transversal << four = @@soup [index_row+=1][0][index_column+=1]
					 transversal << five = @@soup [index_row+=1][0][index_column+=1]
					index_row = 0
					index_move += 1
					index_column = index_move
					if transversal.compact.join.include? word
						result = transversal.join
						p "#{word} encontrada en diagonal"
						p"de izquierda a derecha, de abajo hacia arriba"
					end
				end
				#TRANSEVERSAL HACIA ABAJO
				index_row = 1 #reiniciar los valores en 1 para omitir el transversal [0][0]
				index_move = 1
				until index_move >= @@soup.length #hasta que el indice alcance la longitud del la sopa
					transversal = []#arreglo vacio para ingresar letras, se reinicia en cada iteracion
					transversal << one = @@soup [index_row][0][0] #asignar 1era letra de cada fila a "one", despues empujarle a "transversal"
					transversal << two = @@soup [index_row+=1][0][1] if index_row != @@soup.length - 1 # SI el indice de la fila es diferente de 7, asignar 2a letra de cada fila a "two", despues empujarle a "transversal"
					transversal << three = @@soup [index_row+=1][0][2] if index_row != @@soup.length - 1 #SI el indice de la fila es diferente de 7,asignar 3a letra de cada fila a "three", despues empujarle a "transversal"
					transversal << four = @@soup [index_row+=1][0][3] if index_row != @@soup.length - 1#SI el indice de la fila es diferente de 7,asignar 4a letra de cada fila a "four", despues empujarle a "transversal"
					transversal << five = @@soup [index_row+=1][0][4] if index_row != @@soup.length - 1#SI el indice de la fila es diferente de 7,asignar 5a letra de cada fila a "four", despues empujarle a "transversal"
					index_move += 1 # aumentar el contador de iteracion "until" + 1
					index_row = index_move # asignar valor del contador a el inidice de las filas
					if transversal.compact.join.include? word
						result = transversal.join
						p "#{word} encontrada en diagonal"
						p"de izquierda a derecha, de abajo hacia arriba"
					end
				end
				#TRANSEVERSAL ESQUINA INFERIOR IZQUIERDA A DERECHA, hacia arriba
				@@soup.reverse!#invertir "sopa" con metodo destructivo,
				index_row = 0 #reiniciar los valores en el indice de las filas
				index_move = 0 #reiniciar los valores del contador de iteraciones en -4 de forma que la iteracion vaya de -4...8
				until index_move >= @@soup.length #hasta que el indice alcance la longitud del la sopa
					transversal = []#arreglo vacio para ingresar letras, se reinicia en cada iteracion
					transversal << one = @@soup [index_row][0][0] #asignar 1era letra de cada fila a "one", despues empujarle a "transversal"
					transversal << two = @@soup [index_row+=1][0][1] if index_row != @@soup.length - 1 # SI el indice de la fila es diferente de 7, asignar 2a letra de cada fila a "two", despues empujarle a "transversal"
					transversal << three = @@soup [index_row+=1][0][2] if index_row != @@soup.length - 1 #SI el indice de la fila es diferente de 7,asignar 3a letra de cada fila a "three", despues empujarle a "transversal"
					transversal << four = @@soup [index_row+=1][0][3] if index_row != @@soup.length - 1#SI el indice de la fila es diferente de 7,asignar 4a letra de cada fila a "four", despues empujarle a "transversal"
					if index_row < @@soup.length - 1 # SI el indice de la fila es menor a 7, esta condicion se realiza ya que en algùn punto el indice de la fila supera al numero 7, en cual caso, es nil, el @@soup no acepta valores nil, esto es : @@soup [nil][0][4]
						 transversal << five = @@soup [index_row+=1][0][4]#asignar 5a letra de cada fila a "five", despues empujarle a "transversal
					else index_row = @@soup.length - 1 # en caso de que el indice de la fila llegue a 7
							transversal << five = nil
				  	end
					index_move += 1 # aumentar el contador de iteracion "until" + 1
					index_row = index_move # asignar valor del contador a el inidice de las filas
					if transversal.compact.join.include? word
						result = transversal.join
						p "#{word} encontrada en diagonal"
						p"de izquierda a derecha, de arriba abajo hacia "
					end
				end
				#transversal esauina inferior izquierda a derecha, hacia abajo
				index_row = 0 #reiniciar los valores en el indice de las filas en -4 de forma que la busqueda inicie desde la esquina inferior derecha
				index_move = 0 #reiniciar los valores del contador de iteraciones en -4 de forma que la iteracion vaya de -4...8
				until index_move >= @@soup[0][0].length #hasta que el indice alcance la longitud del la sopa
					transversal = []#arreglo para
					transversal << one = @@soup [index_row][0][index_column]
					transversal << two = @@soup [index_row+=1][0][index_column+=1]
					transversal << three = @@soup [index_row+=1][0][index_column+=1]
					transversal << four = @@soup [index_row+=1][0][index_column+=1]
					transversal << five = @@soup [index_row+=1][0][index_column+=1]
					index_row = 0
					index_move += 1
					index_column = index_move
					if transversal.compact.join.include? word
						result = transversal.join
						p "#{word} encontrada en diagonal"
						p"de izquierda a derecha, de arriba hacia abajo"
					end
				end
		end
	end

	def find_diagonal_derecha_izquieda
		 made_soup_reverse
		# @@soup [row]  [outer_array] [column]
		# @@soup [1]     [0]           [1]
		@@boards_templates [0].each do |word|# iterar en palabras buscadas

			result = nil #variable para colocar resultado si la palabra es colocada
			index_move = 0 #variable para moverse a tràves de las columnas
			index_row = 0 #indice de la fila
			index_column = 0 #indice de columna
			#TRANSEVERSAL HACIA ARRIBA
				until index_move >= @@soup[0][0].length #hasta que el indice alcance la longitud del la sopa
					transversal = []#arreglo para
					 transversal << one = @@soup [index_row][0][index_column]
					 transversal << two = @@soup [index_row+=1][0][index_column+=1]
					 transversal << three = @@soup [index_row+=1][0][index_column+=1]
					 transversal << four = @@soup [index_row+=1][0][index_column+=1]
					 transversal << five = @@soup [index_row+=1][0][index_column+=1]
					index_row = 0
					index_move += 1
					index_column = index_move
					if transversal.compact.join.include? word
						result = transversal.join
						p "#{word} encontrada en diagonal"
						p"de derecha a izquierda, de abajo hacia arriba"
					end
				end
				#TRANSEVERSAL HACIA ABAJO
				index_row = 1 #reiniciar los valores en 1 para omitir el transversal [0][0]
				index_move = 1
				until index_move >= @@soup.length #hasta que el indice alcance la longitud del la sopa
					transversal = []#arreglo vacio para ingresar letras, se reinicia en cada iteracion
					transversal << one = @@soup [index_row][0][0] #asignar 1era letra de cada fila a "one", despues empujarle a "transversal"
					transversal << two = @@soup [index_row+=1][0][1] if index_row != @@soup.length - 1 # SI el indice de la fila es diferente de 7, asignar 2a letra de cada fila a "two", despues empujarle a "transversal"
					transversal << three = @@soup [index_row+=1][0][2] if index_row != @@soup.length - 1 #SI el indice de la fila es diferente de 7,asignar 3a letra de cada fila a "three", despues empujarle a "transversal"
					transversal << four = @@soup [index_row+=1][0][3] if index_row != @@soup.length - 1#SI el indice de la fila es diferente de 7,asignar 4a letra de cada fila a "four", despues empujarle a "transversal"
					transversal << five = @@soup [index_row+=1][0][4] if index_row != @@soup.length - 1#SI el indice de la fila es diferente de 7,asignar 5a letra de cada fila a "four", despues empujarle a "transversal"
					index_move += 1 # aumentar el contador de iteracion "until" + 1
					index_row = index_move # asignar valor del contador a el inidice de las filas
					if transversal.compact.join.include? word
						result = transversal.join
						p "#{word} encontrada en diagonal"
						p "de derecha a izquierda, de abajo hacia arriba"
					end
				end
				#TRANSEVERSAL ESQUINA INFERIOR IZQUIERDA A DERECHA, hacia arriba
				@@soup.reverse!#invertir "sopa" con metodo destructivo,
				index_row = 0 #reiniciar los valores en el indice de las filas
				index_move = 0 #reiniciar los valores del contador de iteraciones en -4 de forma que la iteracion vaya de -4...8

				until index_move >= @@soup.length #hasta que el indice alcance la longitud del la sopa
					transversal = []#arreglo vacio para ingresar letras, se reinicia en cada iteracion
					transversal << one = @@soup [index_row][0][0] #asignar 1era letra de cada fila a "one", despues empujarle a "transversal"
					transversal << two = @@soup [index_row+=1][0][1] if index_row != @@soup.length - 1 # SI el indice de la fila es diferente de 7, asignar 2a letra de cada fila a "two", despues empujarle a "transversal"
					transversal << three = @@soup [index_row+=1][0][2] if index_row != @@soup.length - 1 #SI el indice de la fila es diferente de 7,asignar 3a letra de cada fila a "three", despues empujarle a "transversal"
					transversal << four = @@soup [index_row+=1][0][3] if index_row != @@soup.length - 1#SI el indice de la fila es diferente de 7,asignar 4a letra de cada fila a "four", despues empujarle a "transversal"
					if index_row < @@soup.length - 1 # SI el indice de la fila es menor a 7, esta condicion se realiza ya que en algùn punto el indice de la fila supera al numero 7, en cual caso, es nil, el @@soup no acepta valores nil, esto es : @@soup [nil][0][4]
						 transversal << five = @@soup [index_row+=1][0][4]#asignar 5a letra de cada fila a "five", despues empujarle a "transversal
					else index_row = @@soup.length - 1 # en caso de que el indice de la fila llegue a 7
							transversal << five = nil
				  	end
					index_move += 1 # aumentar el contador de iteracion "until" + 1
					index_row = index_move # asignar valor del contador a el inidice de las filas
					if transversal.compact.join.include? word
						result = transversal.join
						p "#{word} encontrada en diagonal"
						p "de derecha a izquierda, de arriba hacia a abajo"
					end
				end
				#transversal esauina inferior izquierda a derecha, hacia abajo
				index_row = 0 #reiniciar los valores en el indice de las filas en -4 de forma que la busqueda inicie desde la esquina inferior derecha
				index_move = 0 #reiniciar los valores del contador de iteraciones en -4 de forma que la iteracion vaya de -4...8

				until index_move >= @@soup[0][0].length #hasta que el indice alcance la longitud del la sopa
					transversal = []#arreglo para
					transversal << one = @@soup [index_row][0][index_column]
					transversal << two = @@soup [index_row+=1][0][index_column+=1]
					transversal << three = @@soup [index_row+=1][0][index_column+=1]
					transversal << four = @@soup [index_row+=1][0][index_column+=1]
					transversal << five = @@soup [index_row+=1][0][index_column+=1]
					index_row = 0
					index_move += 1
					index_column = index_move
					if transversal.compact.join.include? word
						result = transversal.join
						p "#{word} encontrada en diagonal"
						p"de derecha a izquierda, de arriba hacia abajo"
					end
				end
		end
	end


  def to_s
	  #"try to print a board, what does this method do?"
		 @@soup.each do |fila|
			 puts fila
		 end
  end

  private

  def complete_board!
	 		#Este método debe rellenar un tablero incompleto, en otras palabras cambiar las "x" por letras random.
			#rand(36**1).to_s(36) genera strings aleatorios, preguntar a ABEL porqué
			#random_letter = ""; 1.times{random_letter  << (65 + rand(25)).chr}

			@@boards_templates [1].each_char do |chr|
				if chr == "X"
					chr = random_letter = ""; 1.times{random_letter  << (65 + rand(25)).chr}
					@@pre_soup << chr
				else
					@@pre_soup << chr
				end
			end
			@@pre_soup
  end
end#fin de la clase

board = Board.new
