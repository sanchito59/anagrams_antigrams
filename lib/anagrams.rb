class Word
  def initialize(str)
    @word = str
  end

  # def word2(str2)
  #   @word2 = str2
  # end

  def anagram_detector(word2)
    word1 = @word.downcase().split('').sort().join('')
    word2 = word2.downcase().split('').sort().join('')
    if word1 == word2
      puts "Anagram match!"
      true
    else 
      puts "Not an anagram!"
      false
    end
  end
end