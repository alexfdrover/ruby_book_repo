# loop_exercises.rb

#Ex 1
#x = [1,2,3,4,5]
#x.each do |a|
#  a + 1
#end
#each returns original array thus [1,2,3,4,5] 

#Ex 2
#while 1
#  puts "Input: "
#  answer = gets.chomp
#  puts answer
#  puts "Continue?: "
#  continue_answer = gets.chomp
#  if (continue_answer == "NO")
#    break
#  end
#end

#Ex 3

def recursion_until_0(number)
  puts number
  while (number != 0)
    number -= 1
    recursion_until_0(number)
  end
end

recursion_until_0(7)
