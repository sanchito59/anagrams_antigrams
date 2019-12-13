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
      counter2 = 0 
      word1.each do |letter |
        @vowels.each do |key, value|
          if letter =~ value
            counter +=1
          end
        end
      end
      counter
      word2.each do |letter |
        @vowels.each do |key, value|
          if letter =~ value
            counter2 +=1
          end
        end
      end
      counter2
      if counter > 0 && counter2 > 0
        word2 = word2.sort().join('')
        anagram_detector(word2)
      else
        "That wasn't a word!"
      end
   end

  def anagram_detector(word2)
    word2 = word2.downcase().gsub(" ", "").split('').sort().join('')
    if @word == word2
      "Anagram match!"
    else 
      "Not an anagram!"
    end
  end
end