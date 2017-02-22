=begin
El resultado buscado es uno como el ilustrado inferior, pero aleatorizado
O | O | O |
--  --  --
O | O | X |
--  --  --
X | X | X |
--  --  --
=end
=begin
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
=end
#----------------------------------------
# Último elemento de la segunda fila
#gato[1][2] => "o"
# | Nombre           | Edad | Genero   | Grupo  | Calificaciones |
# +------------------+------+----------+--------+----------------+
# |Rodrigo García    | 13   |Masculino |Primero  |[9, 9, 7, 6, 8] |
# |Fernanda Gonzalez | 12   |Femenino  |Tercero   |[6, 9, 8, 6, 8] |
# |Luis Perez        | 13   |Masculino |Primero   |[8, 7, 7, 9, 8] |
# |Ana Espinosa      | 14   |Femenino  |Segundo   |[9, 9, 6, 8, 8] |
# |Pablo Moran       | 11   |Masculino |Segundo   |[7, 8, 9, 9, 8] |

table = [ ["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"],
          ["Rodrigo García", "13", "Masculino", "Primero", [9, 9, 7, 6, 8]],
          ["Fernanda Gonzalez" ,"12" ,"Femenino", "Tercero" , [6, 9, 8, 6, 8] ],
          ["Luis Perez", "13" , "Masculino", "Primero", [8, 7, 7, 9, 8] ],
          ["Ana Espinosa","14", "Femenino", "Segundo", [9, 9, 6, 8, 8] ],
          ["Pablo Moran", "11", "Masculino" , "Segundo", [7, 8, 9, 9, 8] ],
]
array = []
place_to_column = 0
  for row in 1..5
      table [row].insert(0, table [0][0])
      table [row].insert(2, table [0][1])
      table [row].insert(4, table [0][2])
      table [row].insert(6, table [0][3])
      table [row].insert(8, table [0][4])
  end
table.delete_at(0)
p table.flatten(1)
#EJEMPLO: [{"Nombre"=>"Rodrigo García", "Edad"=>13, "Genero"=>"Masculino", "Grupo"=>"Primero", "Calificaciones"=>[9, 9, 7, 6, 8]},...
# p table[0][4]  == "Calificaciones"
# p table[2][1]  == 12
# p table[2][2]  == "Femenino"
# p table[3][3]  == "Primero"
# p table[3][4]  == [8, 7, 7, 9, 8]
# p table[4][4][2]  == 6
