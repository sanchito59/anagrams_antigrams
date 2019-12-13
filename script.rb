#!/usr/bin/env ruby
require('./lib/anagrams.rb')

puts "
- ANAGRAM DETECTOR - 
"
puts "____________________"
puts " "
puts "Enter a word: "
word1 = gets.chomp
word1 = Word.new(word1)
puts "Enter another word: "
word2 = gets.chomp
puts "____________________"
puts word1.anagram_detector(word2)
puts "____________________"