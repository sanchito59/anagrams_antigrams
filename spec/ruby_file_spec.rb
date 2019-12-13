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
    it('will sort the array') do
        word = Word.new("HiPpO")
        expect(word.anagram_detector()).to(eq(["h", "i", "o", "p", "p"]))
    end
    it('will join the sorted array into a new word') do
        word = Word.new("HiPpO")
        expect(word.anagram_detector()).to(eq('hiopp'))
    end
end