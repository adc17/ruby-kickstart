# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

# Best attempt
def spiral_access(array, &block)
  unless array.length == 0 || array[0].length == 0
    array[0].length.times { final_array << array[0].shift }
    array.delete_at(0)
    array.length.times { |i| final_array << (array[i].pop)}
    array.last.length.times { final_array << (array.last.pop)} unless array.last.nil?
    array.delete_at(array.length-1)
    count = array.length -1
    while count >= 0
      final_array << (array[count].shift)
      count -= 1
    end
    two_d(array, &block) unless array.length == 0
  end
  final_array.delete(nil)
  final_array.each { |x| block.call x }
end
