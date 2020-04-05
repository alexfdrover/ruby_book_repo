# ruby_opposites.rb

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

integer1 = nil
integer2 = nil
loop do
loop do
  print "Please enter your first positive or negative integer: "
  integer1 = gets.chomp
  if valid_number?(integer1) == false
    puts "Please enter a valid positive or negative integer"
    next
  end
  integer1 = integer1.to_i
  break
end

loop do
  print "Please enter your second positive or negative integer: "
  integer2 = gets.chomp
  if valid_number?(integer2) == false || integer2.to_i == 0
    puts "Please enter a valid positive or negative integer (non-zero)"
    next
  end
  integer2 = integer2.to_i
  break
end

if (integer1.positive? && integer2.positive?) || (integer1.negative? && integer2.negative?)
  puts "Sorry. One integer must be positive, one must be negative. Please start again"
else
  results = integer1 + integer2
  puts "#{integer1} + #{integer2} = #{results}"
end
break
end