# frozen_string_literal: true

def substrings(string, dictionary)
  # used Exclusion to split the string into an array of words
  split_Exclusion = /[{!?,.;} ']/
  # We split the string into an array of words
  word = string.split(split_Exclusion)
  # A new hash is created with a default value of 0
  newHash = Hash.new(0)
  # We iterate through the dictionary array
  dictionary.each do |word|
    # We iterate through the array of words
    # We check if the word is included in the dictionary
    string.split(split_Exclusion).each do |split_word|
      # We check if the word is included in the dictionary
      if split_word.downcase.include?(word)
        # We add the word to the hash and increment the value by 1
        newHash[word] += 1
      end
    end
  end
  newHash

end

# here %w is used to create an array of strings
directory = %w[below down go going horn how howdy it i low own part partner sit]
print substrings( "below", directory)


