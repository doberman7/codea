=begin
Actividades
Escribe un método llamado linear_search que tome como argumento un número y un arreglo. Este método debe regresar el índice del primer elemento que sea igual al valor del número, revisando dentro del arreglo cada valor secuencialmente. En caso de no encontrar el número debe regresar nil.

No podrás utilizar métodos de Array ni sus enumerables (each, map, etc ), si no que debes de utilizar iteradores como for while o until. El único método que puedes utilizar es: Array#[]

random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]
linear_search(20, random_numbers)
=> 3
linear_search(29, random_numbers)
=> nil
=end
random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]
def linear_search(number, array)
  #array.index(number)
  element_reference = 0
  num = 0
  while array[element_reference] != nil
    num = element_reference if array[element_reference] == number
    element_reference += 1
  end
   num
end
  p linear_search(20, random_numbers) == 3

=begin
Después deberás crear un método que regrese un array con los indices donde encuentre el objeto y un array vació si no existe, llama este método global_linear_search.
arr = "entretenerse".split('')
=> [0, 4, 6, 8, 11]
=end
arr = "entretenerse".split('')

def global_linear_search(letter, array)
  element_reference = 0
  array_two = []
  while array[element_reference] != nil
     array_two << element_reference if array[element_reference] == letter
     element_reference += 1
  end
    array_two
end

p global_linear_search("e", arr) == [0, 4, 6, 8, 11]
