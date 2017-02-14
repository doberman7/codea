Script: Single word converter to Pig Latin

GET a word from user input
IF the word starts with a vowel, add "way" to the end #. "egg" → "eggway"
ELSE replace the word with its pig latin equivalent.#"pig" → "igpay"
  GET all of the consonants before the first vowel in the word #p
  SET the consonants at the end of the word and add "ay"#ig→p→"ay"
ENDIF
RETURN the pig-latin word
<<<<<<< HEAD
=begin
  word = gets.chomp
  letter = ""

  if /[aeiou]/.match(word[0])
    p word + "way"
  else
    letter = word.slice!(/[^aeiou]/)
    p word + letter + "ay"
  end
=end

#Script: Complete oration converter to Pig Latin
#
# PRINT "add a word "
# ARRAY is created, it is empty
# GET a word from user input
# PUSH the word on the array
# PRINT "add an other word "
# GET a word from user input
# PUSH the word on the array
# PRINT "add more word\'s adding spaces betwen words and stop adding pressing the letter \' n \' "
#   WHILE the user put 's' continue to GET more words
#     GET a word from user input
#     PUSH the word on the array
#   ENDWHILE
# RETURN the pig-latin oration
=======
>>>>>>> 5f10868b36efdd6f1de461725f267e8d79c173db

#--------------------
Script: Complete oration converter to Pig Latin

PRINT "add a word "
ARRAY is created, it is empty
GET a word from user input
PUSH the word on the array
PRINT "add an other word "
GET a word from user input
PUSH the word on the array
PRINT "add more word\'s adding spaces betwen words and stop adding pressing the letter \' n \' "
  WHILE the user put 's' continue to GET more words
    GET a word from user input
    PUSH the word on the array
  ENDWHILE
RETURN the pig-latin oration
