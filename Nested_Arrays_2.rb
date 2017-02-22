=begin
El resultado buscado es uno como el ilustrado inferior, pero aleatorizado
O | O | O |
--  --  --
O | O | X |
--  --  --
X | X | X |
--  --  --
=end
def gato
 convination = ["X","O"] * 4 #inicializar un arreglo con 4 X's y 4 O's respectivamente, 8 en total, llamda "convination"
 tryies = convination.sample# inicializar un muestra aleatorizada de "convination" llamada "tryes"
 convination.shuffle! << tryies# barajear destructivamente "convination"   y "tryes" le es empujada
 result = ""# inicializar "result", variable visiuzalizada al terminar este ejercicio
  	 thre_arrays_of_3 = Array.new(3) {convination.pop(3)}#se crea arreglo con tres arreglos con tres elementos cada uno
  	 thre_arrays_of_3.each do |line|#iterar sobre cada arraglo, asignar nombre "line"
  		line.insert(0,"\s|")#insertar: espacio y pipe al principio de "line"
  		line.insert(2,"\s|\s")#insertar: espacio, pipe, espacio  enmedio-1  de "line"
  		line.insert(4,"\s|\s")#insertar: espacio, pipe, espacio  enmedio+1  de "line"
  		line.insert(6,"\s")#insertar: pipe, espiacio  al final de "line"
  		result << line.reverse.join + "\n" + '--  --  --'+"\n"#cada line es INVERTIDO, juntado en un string, se le agrega un \n + linias de tabler + \n
  	 end
  	 result #retornar resultado
end

puts gato
