#exercises.rb

# exercise1
#my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#my_array.each {|x| print x}


# exercise2
#my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#my_array.each {|x| print x if x>5}


# exercise3
=begin
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = my_array.select {|x| x%2 != 0}
print new_array
=end


# exercise4
=begin
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.unshift(0)
my_array << 11
print my_array
=end


# exercise5
=begin
my_array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
my_array[-1] = 3
print my_array
=end


# exercise6
=begin
my_array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]
my_array.uniq!
print my_array
=end

# exercise7
# An array is an ordered list of items
# A hash is an ordered (formerly unordered prior to Ruby 1.9) object of key-value pairs
# They are different classes

# exercise8
=begin
old_syntax = {:key => 'value'} #symbol as key
new_syntax = {key: 'value'} #symbol as key
new_syntax_var = {x => 'value'} #variable as key, have to use old syntax if not symbol
=end

# exercise9
=begin
h = {a: 1, b: 2, c: 3, d: 4}
puts h
puts h[:b] #Q1
h[:e] = 5 #Q2
puts h
h.delete_if {|k, v| v<3.5} #Q3
puts h
=end

# exercise10
# Yes, hash values can be arrays
#puts h = {a: [1, 2]}
# Yes, you can have an array of hashes
#print [1, 2, {a: 3}]

# exercise11
#I've just spent 2 hours looking for a looping way of doing this before discovering the solution is manual assignment
=begin
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
=end


# exercise12
# access joe's email and sally's number
# contacts["Joe Smith"][:email]
# contacts["Sally Johnson"][:phone]


# exercise13
#arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
#arr.delete_if {|word| word.start_with?("s", "w")}

# exercise14
#a = ['white snow', 'winter wonderland', 'melting ice','slippery sidewalk', 'salted roads', 'white trees']
#p split_string = a.map{|string| string.split(" ")}.flatten!

# exercise16
=begin
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field = contact_data.shift]
  end
end

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end
=end


