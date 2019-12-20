require('rspec')
require('pry')
require('anagrams')

describe('#rearranged_input') do
    it('will return a rearranged string value') do
        word = Word.new('test')
        word2 = Word.new('pizza party')
        word3 = Word.new('HelLO WORlD')
        expect(word.rearranged_input).to(eq("estt"))
        expect(word2.rearranged_input).to(eq("aaipprtyzz"))
        expect(word3.rearranged_input).to(eq("dehllloorw"))
    end
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
    it('will detect whether or not words are antigrams') do
        word = Word.new('hi')
        word2 = 'bye'
        expect(word.anagram_detector(word2)).to(eq("No matching characters- this is an antigram!"))
    end
end