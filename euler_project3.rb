#################################### problem 3
def is_prime(num)
  (2...num).each do |i|
    if num % i == 0
      return false
    end
  end
  return true
end

def primes_factors(number)
  arr = Array(2...number)
  factors = Array.new
  primes = Array.new
  index = 2

  while index <= number-1 do
    arr.each do |i|
      factors << i if i * index == number
    end
    index += 1
  end

  factors.each do |number|
    if number == 2
      primes << number
    elsif is_prime 
      primes << number 
    end
  end

  p primes.max
end
