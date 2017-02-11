class Strings
  #class << self
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
      array = [] #ARRAY its created
      single_word_pig_latin#word = gets.chomp #GET input from user
       array << single_word_pig_latin  #PUSH the word on the array
      p "add an other word "  #PRINT "add an other word "
      get_other_word = "s"
      while get_other_word == "s"  #WHILE the user put 's' continue to GET more words
         single_word_pig_latin#word = gets.chomp #GET a word from user input
         p array << single_word_pig_latin #PUSH the word on the array
         p "do you want to add more words press \" s \", press any other keyboard to stop ading words"
         get_other_word = gets.chomp
      end
      p array.join(" ") #RETURN the pig-latin oration
      self
    end

  #end
end

instance = Strings.new
instance.pig_latin_oration
