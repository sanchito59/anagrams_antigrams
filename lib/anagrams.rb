class Word
  def initialize(str)
    @special_char = /[!@#$%^&*()_+?<>"':{}|\~` ]/
    @word = str.downcase().gsub(@special_char, "").split('').sort().join('')
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
   
   def antigrams_hash(arr)
    hash = Hash.new(0)
    arr.each_with_object(Hash.new(0)){|key, hash| hash[key] += 1}
   end

  def anagram_detector(word2)
    anti1 = @word.split('')
    anti2 = word2.downcase().gsub(@special_char, "").split('')
    word1_char_count = antigrams_hash(anti1)
    word2_char_count = antigrams_hash(anti2)
    puts word1_char_count
    puts word2_char_count
    puts " --- "
    puts " --- "
    puts word1_char_count.keys()
    word1_keys = word1_char_count.keys()
    puts " --- "
    puts word2_char_count.keys()
    word2_keys = word2_char_count.keys()
    matching_char = word1_keys & word2_keys
    puts " - - - - - "
    
    word2 = word2.downcase().gsub(@special_char, "").split('').sort().join('')
    if @word == word2
      "Anagram match!"
    else 
      "Not an anagram!"
    end
    if matching_char.empty? != true
      "There are matching characters!"
    else
      "No matching characters- this is an antigram!"
    end
  end
end