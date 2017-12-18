require 'pry'

puts "What difficulty would you like to play?"
puts "Type 'easy' or 'hard'"
difficulty = gets.chomp

if difficulty == "easy"
  puts "I've picked a number between 1 and 10. Now guess it!"
  number = (rand(10) + 1).to_i
else
  puts "I've picked a number between 1 and 20. Now guess it!"
  number = (rand(20) + 1).to_i
end

print ">"
guess = gets.chomp.to_i

counter = 0
while guess != number do
  puts "Nope, try again!"
  print ">"
  guess = gets.chomp.to_i
  counter += 1
end

puts "You win! Nice job!"
puts "Your score was: #{counter}"
