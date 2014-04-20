puts "Welcome to my guessing game"
puts "-" * 30


loop do
  number = rand(1..10)
  print "Guess my number (1-10) > "
  guess = gets.to_i
  
  if number == guess
    puts "Good job you guessed my number"
    break
  else
    puts "Hahaha you suck. My number is #{number}"
  end
end
