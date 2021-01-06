# The function `lower_case` takes an array of strings and converts
# any non-lower case alphabet (A..Z) to corresponding lower case
# alphabet
def lower_case(words)
  return words.map { |a| a.downcase } # TODO
end

# Similar to `lower_case`, this function modifies the array in-place
# and does not return any value.
def lower_case!(words)
  words.each{|a| a.downcase!}
  return nil
end

# Given a prefix and an array of words, return an array containing
# words that have same prefix.
#
# For example:
# words_with_prefix('apple', ['apple', 'ball', 'applesauce']) would
# return the words 'apple' and 'applesauce'.
def words_with_prefix(prefix, words)
  return words.select { |a| a.start_with?(prefix)}
end

# The similarity score between two words is defined as the length of
# largest common prefix between the words.
#
# For example:
# - Similarity of (bike, bite) is 2 as 'bi' is the largest common prefix.
# - Similarity of (apple, bite) is 0 as there are no common letters in
#   the prefix
# - similarity of (applesauce, apple) is 5 as 'apple' is the largest
#   common prefix.
# 
# The function `similarity_score` takes two words and returns the
# similarity score (an integer).
def similarity_score(word_1, word_2)
  size = [word_1.size,word_2.size].min # TODO
  score = 0
  for i in 0..size-1
   if word_1[i].downcase == word_2[i].downcase 
    score+=1;
   else
    break
   end
  end
return score
end

# Given a chosen word and an array of words, return an array of word(s)
# with the maximum similarity score in the order they appear.
def most_similar_words(chosen_word, words)
  max_score = 0
  sim_words = []
  
  words.each do |a|
  score = similarity_score(chosen_word,a)
   if score > max_score
    max_score = score
    sim_words = [a] 
   elsif score == max_score
    sim_words.push(a)
   end
  end
 return sim_words
end


