=begin
Objetivos Académicos
    Uso de condicionales e ciclos
    Comprender como mejorar la eficiencia de un algoritmo
Actividades
Para este ejercicio es importante crees un Driver Code con muchas pruebas para verificar que tu algoritmo es correcto y que siempre regresa lo mismo.
Para este método es importante que el arreglo este ordenado ascendentemente, tampoco puedes utilizar Array#index y te recomendamos mucho que antes de escribir código escribas pseudocódigo.

DEFINE method binary_search
  ASIGN number_to_look_for
  ASIGN array

  BSEARCH number_to_look_for == |i|
    PUTS   i
=end

def binary_search(number_to_look_for, array)
  var = 0
  array.bsearch do |i|
    #p i < number_to_look_for
    p i == number_to_look_for
    p i
  end
end

 #binary_search(1, [1]) #== 0
 #binary_search(4, [1,2,3]) #== nil
# binary_search(4, [1,2,3,4,5]) #== 3
 # binary_search(6, [1,2,3,4,5,6,7,8,9]) #== 5
 # binary_search(2, [1,2,3,5,6,7,8,9,10,11]) #== 1
  binary_search(5, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) #== 4
