require('rspec')
require('pry')
require('anagrams')

describe('#anagram_detector') do
    # it('will lowercase all inputted words') do
    # word1 = Word.new("HIPPO")
    # expect(word1.anagram_detector()).to(eq("hippo"))
    # end
    # it('will split a word into an array') do
    #     word = Word.new("HiPpO")
    #     expect(word.anagram_detector()).to(eq(["h", "i", "p", "p", "o"]))
    # end
    # it('will sort the array') do
    #     word = Word.new("HiPpO")
    #     expect(word.anagram_detector()).to(eq(["h", "i", "o", "p", "p"]))
    # end
    # it('will join the sorted array into a new word') do
    #     word = Word.new("HiPpO")
    #     expect(word.anagram_detector()).to(eq('hiopp'))
    # end
    it('will detect whether a phrase or word is an anagram') do
        word = Word.new("CLint EASTwoOD")
        word2 = "OLD WEST ACTION"
        expect(word.anagram_detector(word2)).to(eq("Anagram!"))
    end
    it('will detect whether the inputs are words') do
        word = Word.new('mjk')
        word2 = "hello"
        expect(word.vowel_check(word2)).to(eq("That wasn't a word!"))
    end
    it('will detect whether two words are anagrams or not') do
        word = Word.new('tEa')
        word2 = "EAT"
        expect(word.anagram_detector(word2)).to(eq("Anagram!"))
    end
    # it('will create a new hash based on letter occurence') do
    #     word = Word.new('tEa')
    #     arr = ['t', 'e', 'a']
    #     expect(word.antigrams_hash(arr)).to(eq({"t"=>1, "e"=>1, "a"=>1}))
    # end #This function no longer exists as it's own method
    it('will detect whether or not words are antigrams') do
        word = Word.new('hi')
        word2 = 'bye'
        expect(word.anagram_detector(word2)).to(eq("No matching characters- this is an antigram!"))
    end
end