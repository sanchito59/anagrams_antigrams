require('rspec')
require('pry')
require('anagrams')

describe('#anagram_detector') do
    word1 = Word.new("hippo")
    it('will lowercase all inputted words') do
    expect(word1.anagram_detector()).to(eq("hippo"))
    end
end