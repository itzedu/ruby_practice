# Create a method 'random_select' which, when given an array of elements (array) and a number (n), returns n randomly selected elements from that array.

def random_select(array, n)
  output = Array.new
  a = array.size
  n.times do
    output << array.fetch(rand(a))
  end
  return output
end
