require('rspec')
require('pry')
require('anagrams')

describe('#anagram_detector') do
    # it('will lowercase all inputted words') do
    # word1 = Word.new("hippo")
    # expect(word1.anagram_detector()).to(eq("hippo"))
    # end
    it('will split a word into an array') do
        word = Word.new("HiPpO")
        expect(word.anagram_detector()).to(eq(["h", "i", "p", "p", "o"]))
    end
end