# age.rb

puts "What is your age?: "
age = gets.chomp
age = age.to_i
puts "In 10 years you will be:"
age += 10
puts "#{age}"
