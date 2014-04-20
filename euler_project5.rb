#################################### problem 5

def div(number)
  if number % 1 == 0 && number % 2 == 0 && number % 3 == 0 && number % 4 == 0 && number % 5 == 0 && number % 6 == 0 && number % 7 == 0 && number % 8 == 0 && number % 9 == 0 && number % 10 == 0 && number % 11 == 0 && number % 12 == 0 && number % 13 == 0 && number % 14 == 0 && number % 15 == 0 && number % 16 == 0 && number % 17 == 0 && number % 18 == 0 && number % 19 == 0 && number % 20 == 0
    return true
  else
    return false
  end  
end

def smallest()
  arr = Array.new
  biggest = (1..20).inject(1, :*)
  i = 20

  while i <= biggest
    arr << i if div(i)
    i += 20
    break if arr.empty? == false
  end

  arr.join("").to_i
end
  
p smallest()