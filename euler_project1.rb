##################################### problem 1
def sum()
  arr = Array(1...1000)
  answer = Array.new
  total = 0
  arr.each do |number|
    answer << number if ((number % 3 == 0) || (number % 5 == 0))
  end
  
  answer.each {|x| total += x}
  puts total
end
