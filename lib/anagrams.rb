class Word
  def initialize(str)
    @word = str
  end

  def anagram_detector
    @word.downcase().split('')
  end
end

# word1 = Word.new("hippo")
# puts word1.anagram_detector