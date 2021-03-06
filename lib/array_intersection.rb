# time: O(n) where n = length of longer list, list1 creates hash, list2 iterates over list
# space: O(n) where n = length of longer list, list1 creats hash, list2 shovels array
def intersection(list1, list2)
  intersect = Hash[*list1.collect{ |a| [a, 0] }.flatten] # hash first list
  i_array = [] # return object

  list2.each do |b|
    if intersect.has_key?(b)
      i_array << b # shovel if found
    end
  end

  return i_array
end