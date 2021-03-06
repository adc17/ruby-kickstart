# You have two different problems to solve, you must get which one it is from a hash
# The default value for the hash should be :count_clumps
# If no hash is provided, choose count_clumps
#
# PROBLEM: count_clumps
# Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value.
# Return the number of clumps in the given arguments.
#
# problem_14 1, 2, 2, 3, 4, 4, :problem => :count_clumps    # => 2
# problem_14 1, 1, 2, 1, 1,    :problem => :count_clumps    # => 2
# problem_14 1, 1, 1, 1, 1,    :problem => :count_clumps    # => 1
#
#
# PROBLEM: same_ends
# Return true if the group of N numbers at the start and end of the array are the same.
# For example, with [5, 6, 45, 99, 13, 5, 6], the ends are the same for n=0 and n=2, and false for n=1 and n=3.
# You may assume that n is in the range 0..nums.length inclusive.
#
# The first parameter will be n, the rest will be the input to look for ends from
# problem_14 1,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false
# problem_14 2,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => true
# problem_14 3,   5, 6, 45, 99, 13, 5, 6,  :problem => :same_ends    # => false

# 3:14 Best Attempt

# def problem_14(n=[], *problem)
#   if problem[-1].is_a?(Hash)
#     problem.pop[:problem] == :same_ends ? same_ends(n, problem) : count_clumps(n, problem)
#   else
#     count_clumps(n, problem)
#   end
# end
# 
# def same_ends(n, *array)
#   array.flatten!
#   return true if n == 0
#   array[0..n-1] == array[-n..-1] ? true : false
# end
# 
# def count_clumps(n=[], *array)
#   array.unshift(n)
#   array.flatten!
#   count = 0
#   clump = false
#   array.each_index do |x|
#     if array[x] == array[x+1]
#       clump = true
#     else
#       count += 1 if clump
#       clump = false
#     end
#   end
#   return count
# end
 
 
#Tidier Version

def problem_14(*parameters)

  if parameters[-1].is_a?(Hash)
    parameters.pop[:problem] == :same_ends ? same_ends(*parameters) : count_clumps(*parameters)
  else
    count_clumps(*parameters)
  end

end

def same_ends(n, *array)
  return true if n == 0
  array[0..n-1] == array[-n..-1]
end

def count_clumps(*array)
  count = 0
  clump = false
  array.each_index do |x|
    if array[x] == array[x+1]
      clump = true
    else
      count += 1 if clump
      clump = false
    end
  end
  return count
end


