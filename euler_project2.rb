##################################### problem 2
def fib(index)
  if index < 2
    index
  else
    fib(index-1) + fib(index-2) 
  end
end

def fibeven(index)
  sum = 0
  arr = Array.new
  even_arr = Array.new
  (1..index).each {|i| arr << fib(i)}
  
  arr.each do |number|
    even_arr << number if number % 2 == 0
  end

  even_arr.each {|x| sum += x}
  puts sum
end