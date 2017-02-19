=begin
Objetivos Académicos
    Uso de condicionales e ciclos
    Comprender como mejorar la eficiencia de un algoritmo
Actividades
Para este ejercicio es importante crees un Driver Code con muchas pruebas para verificar que tu algoritmo es correcto y que siempre regresa lo mismo.
Para este método es importante que el arreglo este ordenado ascendentemente, tampoco puedes utilizar Array#index y te recomendamos mucho que antes de escribir código escribas pseudocódigo.
=end

def binary_search(searching, array)
half = 0
  if array.length >= searching
    last = array.length
    first = 0
    while searching != half
        if searching == 1
          half = searching
        elsif  array.length > 0
          half = ((first + last)/2)
          first = half if half < searching
          last = half if half > searching
        end
    end
     half - 1
  end
end

p binary_search(1, [1]) == 0
p binary_search(4, [1,2,3]) == nil
p binary_search(4, [1,2,3,4,5]) == 3
p binary_search(6, [1,2,3,4,5,6,7,8,9]) == 5
p binary_search(2, [1,2,3,5,6,7,8,9,10,11]) == 1
p binary_search(5, [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) == 4
