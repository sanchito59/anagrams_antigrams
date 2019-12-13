#!/usr/bin/env ruby
require('./lib/anagrams.rb')

puts "- ANAGRAM DETECTOR -"
puts "____________________"
puts " "
puts "Enter a word: "
word = gets.chomp
word = Word.new(word)
puts "Enter another word: "
word2 = gets.chomp
puts "____________________"
puts word.anagram_detector(word2)
puts "____________________"