# Given a custom class MyArray, 
# write a 'sum' method that takes a block parameter.

class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    sum = initial_value
    if block_given?
      array.each {|i| sum += yield(i)}
      return sum
    else
      return array.inject(:+) + initial_value
    end
  end
end
