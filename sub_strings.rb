#require 'pry'

#binding.pry

dictionary = Array.new
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, subs)
  word_array = Array.new
  matches = Hash.new(0)
  word_downcase = word.downcase.gsub(/[^a-z\s]/, '')    # make word downcase and remove punctuations
  word_array = word_downcase.split(" ")

  word_array.each do |compare_word|                     # the actual comparison
   # matches[compare_word] = 0
    if subs.include?(compare_word)
      matches[compare_word] += 1
    end
  end

  puts matches

end

substrings("Howdy partner, sit down! How's it going?", dictionary)


# ******* Works - but only for exact matches, not if a word of the dictionary is include in a word of the test-string. LOOK INTO .scan!!! ******* #