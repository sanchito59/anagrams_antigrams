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
      puts word1
      puts " "
      word2 = word2.split('')
      puts word2
      puts " "
      counter = 0 
      word1.each do |letter |
        @vowels.each do |key, value|
          if letter =~ value
            counter +=1
            # else
            #   puts "Word1 does not contain #{value}"
          end
        end
      end
      puts counter
   end

  def anagram_detector(word2)
    word2 = word2.downcase().gsub(" ", "").split('').sort().join('')
    vowel_check(word2)
    if @word == word2
      puts "Anagram match!"
      true
    else 
      puts "Not an anagram!"
      false
    end
  end
end