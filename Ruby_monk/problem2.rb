# Given an array containing some strings, return an array containing the length of those strings.

def length_finder(input_array)
  answer = []
  input_array.each {|i| answer << i.length}
  return answer
end