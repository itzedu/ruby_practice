# 9 is a Kaprekar number since 
# 9 ^ 2 = 81 and 8 + 1 = 9

# 297 is also Kaprekar number since 
# 297 ^ 2 = 88209 and 88 + 209 = 297.

# In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1 digits, the resultant sum is k. 
# Find if a given number is a Kaprekar number.

def kaprekar?(k)
  k_length = k.to_s.length
  k_squared = (k*k)
  k_string = k_squared.to_s
  k_array = k_string.split(//)
  k_arr = k_string.split(//).reverse
  
    
  first = k_arr.take(k_length)
  sum1 = first.reverse.join.to_i
  
  if k_string.length.even? 
    second = k_array.take(k_string.length / 2)
    sum2 = second.join.to_i
  else
    second = k_array.take(k_length - 1)
    sum2 = second.join.to_i
  end
  
  if (sum1 + sum2) == k
    true
  else
    false
  end
 
end
