class Strings
    #---METHOD Single word converter to Pig Latin
    def single_word_pig_latin(word=gets.chomp)#GETS the parameter call "word"
      if /[aeiou]/.match(word[0])#IF vowel match the firs letter of the word
         word + "way"#RETURN word concatenated with the string "way"
      else#ELSE
        letter = word.slice!(/[^aeiou]/)#ASSIGN to "letter" the letter any not vowel string
         word + letter + "ay"#CONCAT word, letter and string "ay"
      end#ENDIF
    end#END OF METHOD single_word_pig_latin


    def pig_latin_oration#METHOD to Complete oration converter to Pig Latin
      p "add a word " #PRINT "add a word "
      array = [] #ARRAY its created
      p array << single_word_pig_latin  #PUSH the word created in "the single_word_pig_latin" method on the array
      p "add an other word "  #PRINT "add an other word "
      get_other_word = "s" #ASSIGN a variable to get in the next "while" control flow
      while get_other_word == "s"  #WHILE the user put 's' continue to GET more words
         p array << single_word_pig_latin #PUSH the word on the array
         p "do you want to add more words press \" s \", press any other keyboard to stop ading words"
         get_other_word = gets.chomp#GETS from the user the input to decide if the "while" continues
      end#ENDWHILE
      p array.join(" ") #RETURN the array with all the words converted into a string
    end
end

instance = Strings.new #INSTANCE is created
instance.pig_latin_oration #METHOD is applied
