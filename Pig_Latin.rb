# Script: Single word converter to Pig Latin
#
# GET a word from user input
# IF the word starts with a vowel, add "way" to the end #. "egg" → "eggway"
# ELSE replace the word with its pig latin equivalent.#"pig" → "igpay"
#   GET all of the consonants before the first vowel in the word #p
#   SET the consonants at the end of the word and add "ay"#ig→p→"ay"
# ENDIF
# RETURN the pig-latin word

word = gets.chomp
word =~ /[aeiou]/ ? word + "way" : word.slice(/[^aeiou]/);
# if word =~ /[aeiou]/
#   word + "way"
# else
#   word.slice(/[^aeiou]/)
# end
