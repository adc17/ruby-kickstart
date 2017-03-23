# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(integer)
  h = Hash.new do |hash, key|
    array = []
    key.times do |i| 
      if i.even? && i != 0
        array.push(i)
      end
    end
    hash[key] = array
  end

  count = 1
  loop do
    break if count > integer
    h[count]
    count += 2
  end
  return h
end
