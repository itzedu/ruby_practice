def crazy_sum(numbers)
	sum = 0
	i = 0
	numbers.each {|i| sum += (i + (numbers[i]))}
	i += 1
	end
	puts sum
end

def square_nums(max)
	perf_square = []
	i = 0
	while i < max
		if i*i < max 
			perf_square<<i
		else
			break
		end
	i+=1
	end	
	puts perf_square.count
end



def crazy_nums(max)
	array = []
	i = 0
	if (i%3 == 0 || (i%5 == 0))
		array<<i
	elsif !(i%3 == 0 && (i%5 == 0))
		array<<i
	end
	puts array
end

