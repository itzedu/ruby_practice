# Compute the sum of cubes for a given range a through b.

def sum_of_cubes(a, b)
  sum = 0
  (a..b).each {|i| sum += i*i*i}
  return sum
end