############################## problem 6

def euler6()
  sum1 = 0
  sum2 = 0
  1.upto(100) do |i|
    sum1 += i*i
    sum2 += i
  end

  (sum1 - sum2*sum2).abs
end

p euler6()
