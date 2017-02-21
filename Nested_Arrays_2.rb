#abecedario = ('A'..'Z').last(20) => G..Z
#p que_sera = Array.new(3) { abecedario.pop(2) } => [["Y", "Z"], ["W", "X"], ["U", "V"]]
=begin
O | O | O |
--  --  --
O | O | X |
--  --  --
X | X | X |
--  --  --
=end
def gato
letters = ["X" , "O"]
9.times do
 = letters.sample
 if tiro

 end
end


convinacion  = "X" , "O" , "O", "O", "X", "O","O", "O", "X"#arreglo con 9 elementos
result = ""
	 thre_arrays_of_3 = Array.new(3) {convinacion.pop(3)}#se crea arreglo con tres arreglos con tres elementos cada uno
	 thre_arrays_of_3.each do |line|#iterar sobre cada arraglo, asignar nombre "line"
		line.insert(0,"\s|")#insertar: espacio y pipe al principio de "line"
		line.insert(2,"\s|\s")#insertar: espacio, pipe, espacio  enmedio-1  de "line"
		line.insert(4,"\s|\s")#insertar: espacio, pipe, espacio  enmedio+1  de "line"
		line.insert(6,"\s")#insertar: pipe, espiacio  al final de "line"
		result << line.reverse.join + "\n" + '--  --  --'+"\n"#cada line es INVERTIDO, juntado en un string, se le agrega un \n + linias de tabler + \n
	 end
	 result
end
  gato
