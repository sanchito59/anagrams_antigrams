class Word
  def initialize(str)
    @word = str
  end

  def word2(str2)
    @word2 = str2
  end

  def anagram_detector(word2)
    puts word2 + "detc"
    word1 = @word.downcase().split('').sort().join('')
    puts word1 + " TEST TEST"
  end

  def anagram?(word2)
    puts word2 + "an?"
    if 'eat' == 'eat'
      puts true
    else 
      puts false
    end
  end
end

word1 = gets.chomp
word1 = Word.new(word1)
word2 = gets.chomp
puts word1.anagram_detector(word2)
puts word1.anagram?(word2)