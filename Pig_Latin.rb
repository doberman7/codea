class Strings
  @@array = []
    def single_word_pig_latin(word=gets.chomp)
      letter = ""
      if /[aeiou]/.match(word[0])
         word + "way"
      else
        letter = word.slice!(/[^aeiou]/)
         word + letter + "ay"
      end
      self
    end

    def pig_latin_oration
      p "add a word " #PRINT "add a word "
      #@@array = [] #ARRAY its created
      single_word_pig_latin#word = gets.chomp #GET input from user
       @@array << single_word_pig_latin  #PUSH the word on the array
      p "add an other word "  #PRINT "add an other word "
      get_other_word = "s"
      while get_other_word == "s"  #WHILE the user put 's' continue to GET more words
         single_word_pig_latin#word = gets.chomp #GET a word from user input
         p @@array << single_word_pig_latin #PUSH the word on the array
         p "do you want to add more words press \" s \", press any other keyboard to stop ading words"
         get_other_word = gets.chomp
         self
      end
      @@array = @@array.join(" ") #RETURN the pig-latin oration
      self
    end
    p @@array
end

instance = Strings.new
p instance.pig_latin_oration


=begin
Script: Single word converter to Pig Latin

GET a word from user input
IF the word starts with a vowel, add "way" to the end #. "egg" → "eggway"
ELSE replace the word with its pig latin equivalent. "pig" → "igpay"
  GET all of the consonants before the first vowel in the word #p
  SET the consonants at the end of the word and add "ay"#ig→p→"ay"
ENDIF
RETURN the pig-latin word



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
=end
