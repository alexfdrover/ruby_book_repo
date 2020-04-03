# 0_100.rb

def one_100(num)
  puts "Please enter a number between 0 and 100: "
  answer = gets.chomp.to_i
  if (0 <= answer && answer <= 50)
    puts "The answer is between 0 and 50"
  elsif (51 <= answer && answer <=100)
    puts "The answer is between 51 and 100"
  else
    puts "The answer is above 100"
  end
end
puts one_100(73)
