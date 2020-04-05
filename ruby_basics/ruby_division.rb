#ruby_division.rb

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

loop do
  puts "Please enter a numerator: "
  numerator = gets.chomp
  if valid_number?(numerator) == false
    puts "Invalid input. Please enter an integer."
  end

  numerator = numerator.to_i

  loop do
    puts "Please enter a denominator (non-zero): "
    denominator = gets.chomp

    if valid_number?(denominator) == false
      puts "Invalid input. Please enter an integer."
    end

    if denominator.to_i == 0
      puts "Invalid input. Please enter a non-zero integer"
    end

    denominator = denominator.to_i
    puts "#{numerator} / #{denominator} is #{numerator/denominator}"
    break
  end
  break
end