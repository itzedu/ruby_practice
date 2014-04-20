#################################### problem 4
def is_palindrome(number)
  string_reverse = number.to_s.reverse
  if number == string_reverse.to_i
    return true
  else
    return false
  end
end

def palindrome()
  palindromes = Array.new
  for i in (100...1000) do
    for j in (100...1000) do
      number  = i * j
      palindromes << number if is_palindrome(number)
    end
  end
  palindromes.max 
end