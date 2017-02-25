# def greet
# 	puts "top"
# 	yield
# 	puts "bottom"
# end
# greet do
# 	puts "midle"
# end
def canonical(word)
	word = word.split(//).sort.join
end

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end

def anagrams_for
	result_array = []
	diccionario.select do |i|
		result_array << i  if canonical(i) == canonical(word)
	end
	result_array
end
p anagrams_for do
	 word = " sopa"
	 diccionario = ["sopa","puño","tope","paso"]
end
