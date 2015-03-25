##########################
# RUBY    ANAGRAMS       #
##########################
### Hunter T. Chapman  ###
## bootcoder@gmail.com  ##
##########################

require 'awesome_print'
require 'colorize'

##########################
#       PSEUDO CODE
##########################
=begin

***INPUT***
user inputs a single word to check
script imports a dictionary from words.txt

***OUTPUT***
is a list of anagram words based on user input

*** CODE ***
import the dictionary
downcase & sort all words in the dictionary

get user input
downcase & sort user input

compare user input with sorted dict.
return all indexes from dict where a match occurs

display words from original dict that match indexes from comparison

=end

##########################
#       INITIAL CODE
##########################



def anagrams_app

  print_title

  input = prompt

  word = sort_chars(input)

  real_words = import_words
  sorted_chars = sort_chars(real_words)

  anagram_indexes = compare_words(word, sorted_chars)

  show_anagrams(input, anagram_indexes, real_words)
end

def show_anagrams(input, matches, dict)
  print_title
  puts
  puts "You inputed the word #{input[0].red.blink}."
  puts
  puts "The anagrams for this word are:"
  puts
  matches.each do |match|
    puts "\t\t\t #{dict[match].black.on_yellow} "
  end
  puts
end

def compare_words(input, dict)
  matched_indexes = []
  dict.each_with_index do |word, index|
    matched_indexes << index if word == input[0]
  end
  matched_indexes
end

def print_title
  system 'clear'
  system 'artii ANAGRAMS'
end

def prompt
  puts "Input a word to check:"
  print "->"
  user_input
end

def user_input
  Array.new << STDIN.gets.chomp
end

def sort_chars(word_list)
  sorted_chars = word_list.map { |word| word.chars.sort_by(&:downcase).join }
end

def import_words
  words = []
  puts "ERROR: Please give a valid filename as an argument." if ARGV[0] == nil
  File.readlines(ARGV[0]).each do |line|
    line.gsub!("\n", "") if line.include? "\n"
    words << (line.split(" ")) unless line.split[0] == nil
  end
  words.flatten
end

##########################
#     ACTIONABLE CODE
##########################

anagrams_app

##########################
#       TEST CODE
##########################

