# Given an Array, return the elements that are present exactly once in the array.

def non_duplicated_values(values)
  return values.delete_if {|i| values.count(i) > 1}
end