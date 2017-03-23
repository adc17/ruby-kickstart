# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count(string)
  h = Hash.new
  string.downcase.split.each do |x|
    if h.has_key?(x)
      h[x] += 1
    else
      h[x] = 1
    end
  end
  return h
end

# Could have avoid if statement with `h = Hash.new(0)`
