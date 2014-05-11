# Given a 3 or 4 digit number with distinct digits, return a sorted array of all the unique numbers than can be formed with those digits.

def number_shuffle(number)
  array = []
  count = number.to_s.length
  a = number.to_s.split(//)
  
  if count == 3
    array << a.shuffle.join.to_i until array.uniq.size == 6
  elsif count == 4
    array << a.shuffle.join.to_i until array.uniq.size == 24
  end

return array.uniq.sort
end
