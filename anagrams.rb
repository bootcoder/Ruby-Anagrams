##########################
# RUBY    ANAGRAMS       #
##########################
### Hunter T. Chapman  ###
## bootcoder@gmail.com  ##
##########################

# require 'awesome_print'

##########################
#       PSEUDO CODE
##########################
=begin

***INPUT***


***OUTPUT***


*** CODE ***


=end

##########################
#       INITIAL CODE
##########################

def anagrams_app
  puts "ERROR: Please give a valid filename as an argument." if ARGV[0] == nil
  File.readlines(ARGV[0]).each do |line|
    line.gsub!("\n", "") if line.include? "\n"
    anagram_word(line.split(" ")) unless line.split[0] == nil
  end
end


def anagram_word


##########################
#     ACTIONABLE CODE
##########################

anagrams_app

##########################
#       TEST CODE
##########################

