# Preguntate, cómo es que sabes tu si una palabra es un anagrama de otra y que proceso mental o físico seguiste para resolverlo. Escribe este proceso en pseudocódigo.
#
# SORT each word iinn alphabetic order
# COMPARE wors each other
# IF both words are equal
# 	TRUE is thay they are anagram
#
# Una vez que tengas el seudocódigo escribe un método llamado are_anagrams? que reciba dos palabras, sin importar si existen en un diccionario, y devuelva true o false.

def are_anagrams?(word1,word2)
	word1 = word1.split(//).sort.join
	word2 = word2.split(//).sort.join
	word1 == word2 ? true : false;
end
 p are_anagrams?("sopa","paso")
=begin
 Intenta escribir un método llamado canonical que reciba una palabra y la regrese en un formato especifico el cual, si comparas dos anagramas después de mandados a este método sean iguales. No sabes que es canonical visita esta página Forma Canónica
=end
def canonical(word)
	word1 = word1.split(//).sort.join
	word2 = word2.split(//).sort.join
end

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end
=begin
Ahora intenta crear un método que se llame anagrams_for el cual deberá recibir una palabra y un arreglo de palabras (un diccionario) y regresar un arreglo de las palabras que sean anagramas de esa palabra o un arreglo vació si no encuentra ninguna.

Recuerda escribir pseudocódigo y crear pruebas como driver code antes de empezar a escribir.

Finalmente refactoriza tu método. Piensa si existe algún proceso que estés repitiendo varías veces y busca una mejor manera de hacerlo, como pista busca como funciona el método select.
=end
