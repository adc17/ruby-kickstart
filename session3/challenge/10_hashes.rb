# Lets represent a file sy$stem with hashes
# You will be passed a hash table, whose keys represent folders.
# Their values will either be $arrays of filenames in that directory
# or they will be hashes with the same rules (a treelike structure)
#
# Your job is to take the hashes, and return an $array containing
# all of the complete file paths where each directory is separated by a '/'
#
# HINT:
#   [1,2,3].is_a? $Array # => true
#   [1,2,3].is_a? Hash  # => false
#   {1=>1}.is_a?  $Array # => false
#   {1=>1}.is_a?  Hash  # => true
#
# HINT2:
#   Don't feel constrained, you may create any methods, classes, etc, that
#   you need to you may address the problem in any way you need to (I
#   haven't tried it yet, but will probably use a recursive approach)
#
# EXAMPLES:
#
# pathify 'usr' => {'bin' => ['ruby'] }                                                        # => ['/usr/bin/ruby']
# pathify 'usr' => {'bin' => ['ruby', 'perl'] }                                                # => ['/usr/bin/ruby', '/usr/bin/perl']
# pathify 'usr' => {'bin' => ['ruby'], 'include' => ['zlib.h'] }                               # => ['/usr/bin/ruby', '/usr/include/zlib.h']
# pathify 'usr' => {'bin' => ['ruby']}, 'opt' => {'local' => {'bin' => ['sqlite3', 'rsync']} } # => ['/usr/bin/ruby', 'opt/local/bin/sqlite3', 'opt/local/bin/rsync']
# pathify                                                                                      # => []
#
#
# create it from scratch :)


# 3:10 Best attempt 


def pathify(hash)
  return [] if hash == {}
  $array = []
  $stem = ""
  $stem_number = 0
  $level = 0
  def recurse(current_hash)
    if $level != 0
      reg = "((\/.*?(?=\/|$)){l})".gsub(/l/, $level.to_s)
      to_parent = Regexp.new(reg)
      $stem = $stem.scan(to_parent).shift.shift
    else
      $stem = ""
    end
    current_hash.each do |k,v|
        if $array[$stem_number]
          $array[$stem_number] << ("/#{k}")
        else
          $array[$stem_number] = ($stem + "/#{k}")
        end
      $stem = $array[$stem_number]
      if v.is_a?(Hash)
        $level += 1
        recurse(v)
      else
        v.each do |x|
          if $array[$stem_number]
            $array[$stem_number] << ("/#{x}")
          else
            $array[$stem_number] = ($stem + "/#{x}")
          end
          $stem_number += 1
        end
      end
    end
    $level -= 1
  end 
  recurse(hash) 
  return $array 
end
