############################## problem 7

def is_prime(num)
  (2...num).each do |i|
    if num % i == 0
      return false
    end
  end
  return true
end

def prime_index()
  primes = [2]
  i = 3
  
  while true
    primes << i if is_prime(i)
    i += 1
    break if primes.length == 10001
  end

  primes[-1]
end
