# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

# 3:17 Best Attempt

def print_list_in_reverse(hash)
  if hash[:next].nil?
    print "#{hash[:data]}\n"
    return true
  else
    print "#{hash[:data]}\n" if print_list_in_reverse(hash[:next])
  end
end
