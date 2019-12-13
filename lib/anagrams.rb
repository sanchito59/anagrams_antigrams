class Word
  def initialize(str)
    @word = str.downcase().gsub(" ", "").split('').sort().join('')
    @vowels = {
      'a' => /[a]/,
      'e' => /[e]/,
      'i' => /[i]/,
      'o' => /[o]/,
      'u' => /[u]/,
      'y' => /[y]/
    }
  end
  
    def vowel_check(word2)
      word1 = @word.split('')
      word2 = word2.split('')
      counter = 0 
      word1.each do |letter |
        @vowels.each do |key, value|
          if letter =~ value
            counter +=1
          end
        end
      end
      counter
      if counter > 0
        word2 = word2.sort().join('')
        anagram_detector(word2)
      else
        puts "That's not a word!"
        false
      end
   end

  def anagram_detector(word2)
    word2 = word2.downcase().gsub(" ", "").split('').sort().join('')
    if @word == word2
      puts "Anagram match!"
      true
    else 
      puts "Not an anagram!"
      false
    end
  end
end